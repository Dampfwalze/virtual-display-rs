import 'dart:io';
import 'dart:typed_data';

import 'named_pipe.dart';

class IONamedPipe extends NamedPipe {
  final RandomAccessFile _file;

  IONamedPipe._(this._file);

  static Future<NamedPipe> create(String name) async {
    final pipe = await File(r'\\.\pipe\' + name).open(mode: FileMode.write);
    return IONamedPipe._(pipe);
  }

  @override
  Future<void> write(List<int> buffer, [int start = 0, int? end]) async {
    await _file.writeFrom(buffer, start, end);
  }

  @override
  Future<void> writeString(String string) async {
    await _file.writeString(string);
  }

  @override
  Future<Uint8List> read({
    Duration? timeout,
    Duration? interval = const Duration(milliseconds: 20),
  }) async {
    var length = await _file.length();

    if (length == 0 && timeout == Duration.zero) {
      return Uint8List(0);
    }

    final start = timeout != null ? DateTime.now() : null;

    while (length == 0) {
      if (timeout != null && DateTime.now().difference(start!) > timeout) {
        // TODO: Better exception
        throw Exception('Timeout');
      }

      if (interval != null) {
        await Future.delayed(interval);
      }

      length = await _file.length();
    }

    return await _file.read(length);
  }

  @override
  Future<String> readString({
    Duration? timeout,
    Duration? interval = const Duration(milliseconds: 20),
  }) async {
    return String.fromCharCodes(
      await read(timeout: timeout, interval: interval),
    );
  }

  @override
  Future<void> close() async {
    await _file.close();
  }
}
