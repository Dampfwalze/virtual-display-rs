import 'dart:typed_data';

import 'io_named_pipe.dart';

// Maybe consider using Win32 API directly for this, as in
// https://github.com/dart-windows/win32/blob/main/example/pipe.dart

abstract class NamedPipe {
  static Future<NamedPipe> create(String name) async {
    return await IONamedPipe.create(name);
  }

  Future<void> write(List<int> buffer, [int start = 0, int? end]);

  Future<void> writeString(String string);

  Future<Uint8List> read({
    Duration? timeout,
    Duration? interval,
  });

  Future<String> readString({
    Duration? timeout,
    Duration? interval,
  });

  Future<void> close();
}
