library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_ipc_dart.freezed.dart';
part 'driver_ipc_dart.g.dart';

typedef Id = int;
typedef Dimen = int;
typedef RefreshRate = int;

@freezed
class Monitor with _$Monitor {
  const factory Monitor({
    // identifier
    required Id id,
    required String? name,
    required bool enabled,
    required List<Mode> modes,
  }) = _Monitor;

  factory Monitor.fromJson(Map<String, dynamic> json) =>
      _$MonitorFromJson(json);
}

@freezed
class Mode with _$Mode {
  const factory Mode({
    required Dimen width,
    required Dimen height,
    required List<RefreshRate> refreshRates,
  }) = _Mode;

  factory Mode.fromJson(Map<String, dynamic> json) => _$ModeFromJson(json);
}

@Freezed(fromJson: false, toJson: false)
sealed class Command with _$Command {
  const Command._();

  /// Single line of communication client->server
  /// Driver commands
  ///
  /// Notify of monitor changes (whether adding or updating)
  const factory Command.driverNotify(List<Monitor> monitors) = DriverNotify;

  /// Remove a monitor from system
  const factory Command.driverRemove(List<Id> ids) = DriverRemove;

  /// Remove all monitors from system
  const factory Command.driverRemoveAll() = DriverRemoveAll;

  /// Requests
  /// client->server
  ///
  /// Request information on the current system monitor state
  const factory Command.requestState() = RequestState;

  /// Replies to request
  /// server->client
  const factory Command.replyState(List<Monitor> monitors) = ReplyState;

  // Custom JSON de/serialization for unions/enums for compatibility with serde
  factory Command.fromJson(dynamic json) => switch (json) {
        {'DriverNotify': final monitors} => Command.driverNotify(
            (monitors as List).map((e) => Monitor.fromJson(e)).toList(),
          ),
        {'DriverRemove': final ids} =>
          Command.driverRemove((ids as List).cast()),
        'DriverRemoveAll' => Command.driverRemoveAll(),
        'RequestState' => Command.requestState(),
        {'ReplyState': final monitors} => Command.replyState(
            (monitors as List).map((e) => Monitor.fromJson(e)).toList(),
          ),
        _ => throw FormatException('Ill-formed JSON'),
      };

  dynamic toJson() => switch (this) {
        DriverNotify(:final monitors) => {
            'DriverNotify': monitors.map((e) => e.toJson()).toList(),
          },
        DriverRemove(:final ids) => {
            'DriverRemove': ids,
          },
        DriverRemoveAll() => 'DriverRemoveAll',
        RequestState() => 'RequestState',
        ReplyState(:final monitors) => {
            'ReplyState': monitors.map((e) => e.toJson()).toList(),
          },
      };
}
