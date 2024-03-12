// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.28.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.io.dart' if (dart.library.html) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {}

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.0.0-dev.28';

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'dart-vdd',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<void> virtualDisplayDriverAddMonitor(
      {required VirtualDisplayDriver that,
      String? name,
      required bool enabled,
      required List<Mode> modes,
      dynamic hint});

  VirtualDisplayDriver virtualDisplayDriverNew(
      {String? pipeName, dynamic hint});

  Future<void> virtualDisplayDriverRemoveAllMonitors(
      {required VirtualDisplayDriver that, dynamic hint});

  Future<void> virtualDisplayDriverRemoveMonitors(
      {required VirtualDisplayDriver that,
      required List<int> ids,
      dynamic hint});

  Future<void> virtualDisplayDriverSetMonitor(
      {required VirtualDisplayDriver that,
      required int id,
      bool? enabled,
      String? name,
      List<Mode>? modes,
      dynamic hint});

  Future<void> virtualDisplayDriverSetMonitors(
      {required VirtualDisplayDriver that,
      required List<Monitor> monitors,
      dynamic hint});

  Future<List<Monitor>> virtualDisplayDriverState(
      {required VirtualDisplayDriver that, dynamic hint});

  Stream<List<Monitor>> virtualDisplayDriverStream(
      {required VirtualDisplayDriver that, dynamic hint});

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_VirtualDisplayDriver;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_VirtualDisplayDriver;

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_VirtualDisplayDriverPtr;
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<void> virtualDisplayDriverAddMonitor(
      {required VirtualDisplayDriver that,
      String? name,
      required bool enabled,
      required List<Mode> modes,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
            that, serializer);
        sse_encode_opt_String(name, serializer);
        sse_encode_bool(enabled, serializer);
        sse_encode_list_mode(modes, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 6, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverAddMonitorConstMeta,
      argValues: [that, name, enabled, modes],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverAddMonitorConstMeta =>
      const TaskConstMeta(
        debugName: "VirtualDisplayDriver_add_monitor",
        argNames: ["that", "name", "enabled", "modes"],
      );

  @override
  VirtualDisplayDriver virtualDisplayDriverNew(
      {String? pipeName, dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_opt_String(pipeName, serializer);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 1)!;
      },
      codec: SseCodec(
        decodeSuccessData:
            sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverNewConstMeta,
      argValues: [pipeName],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverNewConstMeta => const TaskConstMeta(
        debugName: "VirtualDisplayDriver_new",
        argNames: ["pipeName"],
      );

  @override
  Future<void> virtualDisplayDriverRemoveAllMonitors(
      {required VirtualDisplayDriver that, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
            that, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 8, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverRemoveAllMonitorsConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverRemoveAllMonitorsConstMeta =>
      const TaskConstMeta(
        debugName: "VirtualDisplayDriver_remove_all_monitors",
        argNames: ["that"],
      );

  @override
  Future<void> virtualDisplayDriverRemoveMonitors(
      {required VirtualDisplayDriver that,
      required List<int> ids,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
            that, serializer);
        sse_encode_list_prim_u_32_loose(ids, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 7, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverRemoveMonitorsConstMeta,
      argValues: [that, ids],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverRemoveMonitorsConstMeta =>
      const TaskConstMeta(
        debugName: "VirtualDisplayDriver_remove_monitors",
        argNames: ["that", "ids"],
      );

  @override
  Future<void> virtualDisplayDriverSetMonitor(
      {required VirtualDisplayDriver that,
      required int id,
      bool? enabled,
      String? name,
      List<Mode>? modes,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
            that, serializer);
        sse_encode_u_32(id, serializer);
        sse_encode_opt_box_autoadd_bool(enabled, serializer);
        sse_encode_opt_String(name, serializer);
        sse_encode_opt_list_mode(modes, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 5, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverSetMonitorConstMeta,
      argValues: [that, id, enabled, name, modes],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverSetMonitorConstMeta =>
      const TaskConstMeta(
        debugName: "VirtualDisplayDriver_set_monitor",
        argNames: ["that", "id", "enabled", "name", "modes"],
      );

  @override
  Future<void> virtualDisplayDriverSetMonitors(
      {required VirtualDisplayDriver that,
      required List<Monitor> monitors,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
            that, serializer);
        sse_encode_list_monitor(monitors, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 4, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverSetMonitorsConstMeta,
      argValues: [that, monitors],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverSetMonitorsConstMeta =>
      const TaskConstMeta(
        debugName: "VirtualDisplayDriver_set_monitors",
        argNames: ["that", "monitors"],
      );

  @override
  Future<List<Monitor>> virtualDisplayDriverState(
      {required VirtualDisplayDriver that, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
            that, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 2, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_list_monitor,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverStateConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverStateConstMeta => const TaskConstMeta(
        debugName: "VirtualDisplayDriver_state",
        argNames: ["that"],
      );

  @override
  Stream<List<Monitor>> virtualDisplayDriverStream(
      {required VirtualDisplayDriver that, dynamic hint}) {
    return handler.executeStream(StreamTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
            that, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 3, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_list_monitor,
        decodeErrorData: null,
      ),
      constMeta: kVirtualDisplayDriverStreamConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kVirtualDisplayDriverStreamConstMeta => const TaskConstMeta(
        debugName: "VirtualDisplayDriver_stream",
        argNames: ["that"],
      );

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_VirtualDisplayDriver => wire
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_VirtualDisplayDriver => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver;

  @protected
  VirtualDisplayDriver
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return VirtualDisplayDriver.dcoDecode(raw as List<dynamic>);
  }

  @protected
  VirtualDisplayDriver
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return VirtualDisplayDriver.dcoDecode(raw as List<dynamic>);
  }

  @protected
  VirtualDisplayDriver
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return VirtualDisplayDriver.dcoDecode(raw as List<dynamic>);
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  bool dco_decode_bool(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as bool;
  }

  @protected
  bool dco_decode_box_autoadd_bool(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as bool;
  }

  @protected
  List<Mode> dco_decode_list_mode(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_mode).toList();
  }

  @protected
  List<Monitor> dco_decode_list_monitor(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_monitor).toList();
  }

  @protected
  List<int> dco_decode_list_prim_u_32_loose(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as List<int>;
  }

  @protected
  Uint32List dco_decode_list_prim_u_32_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint32List;
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  Mode dco_decode_mode(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return Mode(
      width: dco_decode_u_32(arr[0]),
      height: dco_decode_u_32(arr[1]),
      refreshRates: dco_decode_list_prim_u_32_strict(arr[2]),
    );
  }

  @protected
  Monitor dco_decode_monitor(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return Monitor(
      id: dco_decode_u_32(arr[0]),
      name: dco_decode_opt_String(arr[1]),
      enabled: dco_decode_bool(arr[2]),
      modes: dco_decode_list_mode(arr[3]),
    );
  }

  @protected
  String? dco_decode_opt_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_String(raw);
  }

  @protected
  bool? dco_decode_opt_box_autoadd_bool(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_box_autoadd_bool(raw);
  }

  @protected
  List<Mode>? dco_decode_opt_list_mode(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_list_mode(raw);
  }

  @protected
  int dco_decode_u_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  int dco_decode_usize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeI64OrU64(raw);
  }

  @protected
  VirtualDisplayDriver
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return VirtualDisplayDriver.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  VirtualDisplayDriver
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return VirtualDisplayDriver.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  VirtualDisplayDriver
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return VirtualDisplayDriver.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  bool sse_decode_box_autoadd_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return (sse_decode_bool(deserializer));
  }

  @protected
  List<Mode> sse_decode_list_mode(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <Mode>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_mode(deserializer));
    }
    return ans_;
  }

  @protected
  List<Monitor> sse_decode_list_monitor(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <Monitor>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_monitor(deserializer));
    }
    return ans_;
  }

  @protected
  List<int> sse_decode_list_prim_u_32_loose(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint32List(len_);
  }

  @protected
  Uint32List sse_decode_list_prim_u_32_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint32List(len_);
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  Mode sse_decode_mode(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_width = sse_decode_u_32(deserializer);
    var var_height = sse_decode_u_32(deserializer);
    var var_refreshRates = sse_decode_list_prim_u_32_strict(deserializer);
    return Mode(
        width: var_width, height: var_height, refreshRates: var_refreshRates);
  }

  @protected
  Monitor sse_decode_monitor(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_id = sse_decode_u_32(deserializer);
    var var_name = sse_decode_opt_String(deserializer);
    var var_enabled = sse_decode_bool(deserializer);
    var var_modes = sse_decode_list_mode(deserializer);
    return Monitor(
        id: var_id, name: var_name, enabled: var_enabled, modes: var_modes);
  }

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_String(deserializer));
    } else {
      return null;
    }
  }

  @protected
  bool? sse_decode_opt_box_autoadd_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_box_autoadd_bool(deserializer));
    } else {
      return null;
    }
  }

  @protected
  List<Mode>? sse_decode_opt_list_mode(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_list_mode(deserializer));
    } else {
      return null;
    }
  }

  @protected
  int sse_decode_u_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint32();
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  int sse_decode_usize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint64();
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          VirtualDisplayDriver self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(self.sseEncode(move: true), serializer);
  }

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          VirtualDisplayDriver self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(self.sseEncode(move: false), serializer);
  }

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockVirtualDisplayDriver(
          VirtualDisplayDriver self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(self.sseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }

  @protected
  void sse_encode_box_autoadd_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_bool(self, serializer);
  }

  @protected
  void sse_encode_list_mode(List<Mode> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_mode(item, serializer);
    }
  }

  @protected
  void sse_encode_list_monitor(List<Monitor> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_monitor(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_32_loose(
      List<int> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer
        .putUint32List(self is Uint32List ? self : Uint32List.fromList(self));
  }

  @protected
  void sse_encode_list_prim_u_32_strict(
      Uint32List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint32List(self);
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_mode(Mode self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_32(self.width, serializer);
    sse_encode_u_32(self.height, serializer);
    sse_encode_list_prim_u_32_strict(self.refreshRates, serializer);
  }

  @protected
  void sse_encode_monitor(Monitor self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_32(self.id, serializer);
    sse_encode_opt_String(self.name, serializer);
    sse_encode_bool(self.enabled, serializer);
    sse_encode_list_mode(self.modes, serializer);
  }

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_String(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_box_autoadd_bool(bool? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_box_autoadd_bool(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_list_mode(List<Mode>? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_list_mode(self, serializer);
    }
  }

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint32(self);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_usize(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint64(self);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }
}
