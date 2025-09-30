import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:typed_data';
import 'package:chatterbox/core/json_converters.dart';
import 'package:chatterbox/protocol/packet_codec.dart';

part 'routed_packet.freezed.dart';
part 'routed_packet.g.dart';

@freezed
class RoutedPacket with _$RoutedPacket {
  const factory RoutedPacket({
    required chatterboxPacket packet,
    String? peerID,
    String? relayAddress,
    String? transferId,
  }) = _RoutedPacket;

  factory RoutedPacket.fromJson(Map<String, dynamic> json) =>
      _$RoutedPacketFromJson(json);
}

@freezed
class chatterboxPacket with _$chatterboxPacket {
  const factory chatterboxPacket({
    @Default(1) int version,
    @Default(0) int type,
    @Default(7) int ttl,
    @Uint8ListBase64Converter() Uint8List? senderID,
    @Uint8ListBase64Converter() Uint8List? recipientID,
    required DateTime timestamp,
    @Uint8ListBase64Converter() Uint8List? payload,
    @Uint8ListListConverter() List<Uint8List>? route,
    @Uint8ListBase64Converter() Uint8List? signature,
  }) = _chatterboxPacket;

  factory chatterboxPacket.fromJson(Map<String, dynamic> json) =>
      _$chatterboxPacketFromJson(json);

  const chatterboxPacket._();

  static chatterboxPacket? decode(Uint8List data) {
    return PacketCodec.decode(data);
  }

  /// Encode this packet to binary data.
  Uint8List? toBinaryData() {
    return PacketCodec.encode(this, senderID: senderID ?? Uint8List(8));
  }
}
