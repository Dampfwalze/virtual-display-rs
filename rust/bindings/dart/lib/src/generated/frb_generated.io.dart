// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api.dart';
import 'api/client.dart';
import 'api/driver_client.dart';
import 'api/mock.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_ClientPtr => wire
      ._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClientPtr;

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_DriverClientPtr => wire
          ._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClientPtr;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_MockServerPtr =>
      wire._rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServerPtr;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  Client
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          dynamic raw);

  @protected
  DriverClient
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          dynamic raw);

  @protected
  MockServer
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          dynamic raw);

  @protected
  DriverClient
      dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          dynamic raw);

  @protected
  MockServer
      dco_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          dynamic raw);

  @protected
  Client
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          dynamic raw);

  @protected
  DriverClient
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          dynamic raw);

  @protected
  MockServer
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          dynamic raw);

  @protected
  Duration dco_decode_Chrono_Duration(dynamic raw);

  @protected
  Client
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          dynamic raw);

  @protected
  DriverClient
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          dynamic raw);

  @protected
  MockServer
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          dynamic raw);

  @protected
  RustStreamSink<List<Monitor>> dco_decode_StreamSink_list_monitor_Sse(
      dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  AddModeError dco_decode_add_mode_error(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  ConnectionError dco_decode_box_autoadd_connection_error(dynamic raw);

  @protected
  Mode dco_decode_box_autoadd_mode(dynamic raw);

  @protected
  Monitor dco_decode_box_autoadd_monitor(dynamic raw);

  @protected
  (int, int) dco_decode_box_autoadd_record_u_32_u_32(dynamic raw);

  @protected
  RequestError dco_decode_box_autoadd_request_error(dynamic raw);

  @protected
  int dco_decode_box_autoadd_u_32(dynamic raw);

  @protected
  ConnectionError dco_decode_connection_error(dynamic raw);

  @protected
  DuplicateError dco_decode_duplicate_error(dynamic raw);

  @protected
  PlatformInt64 dco_decode_i_64(dynamic raw);

  @protected
  InitError dco_decode_init_error(dynamic raw);

  @protected
  List<Mode> dco_decode_list_mode(dynamic raw);

  @protected
  List<Monitor> dco_decode_list_monitor(dynamic raw);

  @protected
  List<int> dco_decode_list_prim_u_32_loose(dynamic raw);

  @protected
  Uint32List dco_decode_list_prim_u_32_strict(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  Mode dco_decode_mode(dynamic raw);

  @protected
  Monitor dco_decode_monitor(dynamic raw);

  @protected
  MonitorNotFoundError dco_decode_monitor_not_found_error(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  Monitor? dco_decode_opt_box_autoadd_monitor(dynamic raw);

  @protected
  int? dco_decode_opt_box_autoadd_u_32(dynamic raw);

  @protected
  PersistError dco_decode_persist_error(dynamic raw);

  @protected
  ReceiveError dco_decode_receive_error(dynamic raw);

  @protected
  (int, int) dco_decode_record_u_32_u_32(dynamic raw);

  @protected
  RequestError dco_decode_request_error(dynamic raw);

  @protected
  SendError dco_decode_send_error(dynamic raw);

  @protected
  int dco_decode_u_32(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  BigInt dco_decode_usize(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  Client
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          SseDeserializer deserializer);

  @protected
  DriverClient
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          SseDeserializer deserializer);

  @protected
  MockServer
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          SseDeserializer deserializer);

  @protected
  DriverClient
      sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          SseDeserializer deserializer);

  @protected
  MockServer
      sse_decode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          SseDeserializer deserializer);

  @protected
  Client
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          SseDeserializer deserializer);

  @protected
  DriverClient
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          SseDeserializer deserializer);

  @protected
  MockServer
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          SseDeserializer deserializer);

  @protected
  Duration sse_decode_Chrono_Duration(SseDeserializer deserializer);

  @protected
  Client
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          SseDeserializer deserializer);

  @protected
  DriverClient
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          SseDeserializer deserializer);

  @protected
  MockServer
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          SseDeserializer deserializer);

  @protected
  RustStreamSink<List<Monitor>> sse_decode_StreamSink_list_monitor_Sse(
      SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  AddModeError sse_decode_add_mode_error(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  ConnectionError sse_decode_box_autoadd_connection_error(
      SseDeserializer deserializer);

  @protected
  Mode sse_decode_box_autoadd_mode(SseDeserializer deserializer);

  @protected
  Monitor sse_decode_box_autoadd_monitor(SseDeserializer deserializer);

  @protected
  (int, int) sse_decode_box_autoadd_record_u_32_u_32(
      SseDeserializer deserializer);

  @protected
  RequestError sse_decode_box_autoadd_request_error(
      SseDeserializer deserializer);

  @protected
  int sse_decode_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  ConnectionError sse_decode_connection_error(SseDeserializer deserializer);

  @protected
  DuplicateError sse_decode_duplicate_error(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_i_64(SseDeserializer deserializer);

  @protected
  InitError sse_decode_init_error(SseDeserializer deserializer);

  @protected
  List<Mode> sse_decode_list_mode(SseDeserializer deserializer);

  @protected
  List<Monitor> sse_decode_list_monitor(SseDeserializer deserializer);

  @protected
  List<int> sse_decode_list_prim_u_32_loose(SseDeserializer deserializer);

  @protected
  Uint32List sse_decode_list_prim_u_32_strict(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  Mode sse_decode_mode(SseDeserializer deserializer);

  @protected
  Monitor sse_decode_monitor(SseDeserializer deserializer);

  @protected
  MonitorNotFoundError sse_decode_monitor_not_found_error(
      SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  Monitor? sse_decode_opt_box_autoadd_monitor(SseDeserializer deserializer);

  @protected
  int? sse_decode_opt_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  PersistError sse_decode_persist_error(SseDeserializer deserializer);

  @protected
  ReceiveError sse_decode_receive_error(SseDeserializer deserializer);

  @protected
  (int, int) sse_decode_record_u_32_u_32(SseDeserializer deserializer);

  @protected
  RequestError sse_decode_request_error(SseDeserializer deserializer);

  @protected
  SendError sse_decode_send_error(SseDeserializer deserializer);

  @protected
  int sse_decode_u_32(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          Client self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          DriverClient self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          MockServer self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          DriverClient self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_RefMut_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          MockServer self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          Client self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          DriverClient self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          MockServer self, SseSerializer serializer);

  @protected
  void sse_encode_Chrono_Duration(Duration self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
          Client self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
          DriverClient self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
          MockServer self, SseSerializer serializer);

  @protected
  void sse_encode_StreamSink_list_monitor_Sse(
      RustStreamSink<List<Monitor>> self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_add_mode_error(AddModeError self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_connection_error(
      ConnectionError self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_mode(Mode self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_monitor(Monitor self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_record_u_32_u_32(
      (int, int) self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_request_error(
      RequestError self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_connection_error(
      ConnectionError self, SseSerializer serializer);

  @protected
  void sse_encode_duplicate_error(
      DuplicateError self, SseSerializer serializer);

  @protected
  void sse_encode_i_64(PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_init_error(InitError self, SseSerializer serializer);

  @protected
  void sse_encode_list_mode(List<Mode> self, SseSerializer serializer);

  @protected
  void sse_encode_list_monitor(List<Monitor> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_32_loose(
      List<int> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_32_strict(
      Uint32List self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_mode(Mode self, SseSerializer serializer);

  @protected
  void sse_encode_monitor(Monitor self, SseSerializer serializer);

  @protected
  void sse_encode_monitor_not_found_error(
      MonitorNotFoundError self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_monitor(
      Monitor? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_u_32(int? self, SseSerializer serializer);

  @protected
  void sse_encode_persist_error(PersistError self, SseSerializer serializer);

  @protected
  void sse_encode_receive_error(ReceiveError self, SseSerializer serializer);

  @protected
  void sse_encode_record_u_32_u_32((int, int) self, SseSerializer serializer);

  @protected
  void sse_encode_request_error(RequestError self, SseSerializer serializer);

  @protected
  void sse_encode_send_error(SendError self, SseSerializer serializer);

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  factory RustLibWire.fromExternalLibrary(ExternalLibrary lib) =>
      RustLibWire(lib.ffiDynamicLibrary);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustLibWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClientPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'frbgen_vdd_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient');
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClientPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClientPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'frbgen_vdd_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient');
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClient =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerClientPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClientPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'frbgen_vdd_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient');
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClientPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClientPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'frbgen_vdd_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient');
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClient =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerDriverClientPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
      ptr,
    );
  }

  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServerPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'frbgen_vdd_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer');
  late final _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer =
      _rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServerPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer(
      ptr,
    );
  }

  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServerPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'frbgen_vdd_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer');
  late final _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServer =
      _rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMockServerPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();
}
