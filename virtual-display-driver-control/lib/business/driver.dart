import 'dart:async';
import 'dart:convert';

import 'package:driver_ipc_dart/driver_ipc_dart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:virtual_display_driver_control/pipes/named_pipe.dart';

final driverPipeProvider = FutureProvider<NamedPipe>((ref) async {
  final pipe = await NamedPipe.create('virtualdisplaydriver');

  ref.onDispose(() async {
    await pipe.close();
  });

  return pipe;
});

final driverProvider =
    NotifierProvider<DriverNotifier, AsyncValue<List<Monitor>>>(
        DriverNotifier.new);

class DriverNotifier extends Notifier<AsyncValue<List<Monitor>>> {
  @override
  AsyncValue<List<Monitor>> build() {
    state = const AsyncValue.loading();
    _load();
    return const AsyncValue.loading();
  }

  Future<void> _load() async {
    state = const AsyncValue<List<Monitor>>.loading().copyWithPrevious(state);

    final pipe = await ref.read(driverPipeProvider.future);
    try {
      await pipe.writeString(jsonEncode(
        const Command.requestState().toJson(),
      ));

      final response = await pipe.readString(
        timeout: const Duration(seconds: 5),
      );
      final command = Command.fromJson(jsonDecode(response));

      if (command case ReplyState(:final monitors)) {
        state = AsyncValue.data(monitors);
      } else {
        // TODO: Better exception
        throw Exception('Invalid response');
      }
    } catch (e, s) {
      state = AsyncValue<List<Monitor>>.error(e, s).copyWithPrevious(state);
    } finally {
      ref.invalidate(driverPipeProvider);
    }
  }

  Completer<void>? _pendingCommand;

  Future<void> _sendCommand(Command command) async {
    await _pendingCommand?.future;
    _pendingCommand = Completer<void>();

    final pipe = await ref.read(driverPipeProvider.future);
    try {
      await pipe.writeString(jsonEncode(command.toJson()));

      await _load();
    } finally {
      ref.invalidate(driverPipeProvider);

      _pendingCommand?.complete();
    }
  }

  Future<void> toggleMonitor(int id, bool enabled) async {
    if (state case AsyncData(value: final state)) {
      await _sendCommand(Command.driverNotify([
        state.singleWhere((e) => e.id == id).copyWith(enabled: enabled),
      ]));
    }
  }
}
