// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatterbox_file_packet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

chatterboxFilePacket _$chatterboxFilePacketFromJson(Map<String, dynamic> json) {
  return _chatterboxFilePacket.fromJson(json);
}

/// @nodoc
mixin _$chatterboxFilePacket {
  String get fileName => throw _privateConstructorUsedError;
  int get fileSize => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  @Uint8ListBase64Converter()
  Uint8List? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $chatterboxFilePacketCopyWith<chatterboxFilePacket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $chatterboxFilePacketCopyWith<$Res> {
  factory $chatterboxFilePacketCopyWith(
          chatterboxFilePacket value, $Res Function(chatterboxFilePacket) then) =
      _$chatterboxFilePacketCopyWithImpl<$Res, chatterboxFilePacket>;
  @useResult
  $Res call(
      {String fileName,
      int fileSize,
      String mimeType,
      @Uint8ListBase64Converter() Uint8List? content});
}

/// @nodoc
class _$chatterboxFilePacketCopyWithImpl<$Res, $Val extends chatterboxFilePacket>
    implements $chatterboxFilePacketCopyWith<$Res> {
  _$chatterboxFilePacketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? fileSize = null,
    Object? mimeType = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$chatterboxFilePacketImplCopyWith<$Res>
    implements $chatterboxFilePacketCopyWith<$Res> {
  factory _$$chatterboxFilePacketImplCopyWith(_$chatterboxFilePacketImpl value,
          $Res Function(_$chatterboxFilePacketImpl) then) =
      __$$chatterboxFilePacketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName,
      int fileSize,
      String mimeType,
      @Uint8ListBase64Converter() Uint8List? content});
}

/// @nodoc
class __$$chatterboxFilePacketImplCopyWithImpl<$Res>
    extends _$chatterboxFilePacketCopyWithImpl<$Res, _$chatterboxFilePacketImpl>
    implements _$$chatterboxFilePacketImplCopyWith<$Res> {
  __$$chatterboxFilePacketImplCopyWithImpl(_$chatterboxFilePacketImpl _value,
      $Res Function(_$chatterboxFilePacketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? fileSize = null,
    Object? mimeType = null,
    Object? content = freezed,
  }) {
    return _then(_$chatterboxFilePacketImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$chatterboxFilePacketImpl extends _chatterboxFilePacket {
  const _$chatterboxFilePacketImpl(
      {required this.fileName,
      required this.fileSize,
      required this.mimeType,
      @Uint8ListBase64Converter() this.content})
      : super._();

  factory _$chatterboxFilePacketImpl.fromJson(Map<String, dynamic> json) =>
      _$$chatterboxFilePacketImplFromJson(json);

  @override
  final String fileName;
  @override
  final int fileSize;
  @override
  final String mimeType;
  @override
  @Uint8ListBase64Converter()
  final Uint8List? content;

  @override
  String toString() {
    return 'chatterboxFilePacket(fileName: $fileName, fileSize: $fileSize, mimeType: $mimeType, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatterboxFilePacketImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, fileSize, mimeType,
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$chatterboxFilePacketImplCopyWith<_$chatterboxFilePacketImpl> get copyWith =>
      __$$chatterboxFilePacketImplCopyWithImpl<_$chatterboxFilePacketImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$chatterboxFilePacketImplToJson(
      this,
    );
  }
}

abstract class _chatterboxFilePacket extends chatterboxFilePacket {
  const factory _chatterboxFilePacket(
          {required final String fileName,
          required final int fileSize,
          required final String mimeType,
          @Uint8ListBase64Converter() final Uint8List? content}) =
      _$chatterboxFilePacketImpl;
  const _chatterboxFilePacket._() : super._();

  factory _chatterboxFilePacket.fromJson(Map<String, dynamic> json) =
      _$chatterboxFilePacketImpl.fromJson;

  @override
  String get fileName;
  @override
  int get fileSize;
  @override
  String get mimeType;
  @override
  @Uint8ListBase64Converter()
  Uint8List? get content;
  @override
  @JsonKey(ignore: true)
  _$$chatterboxFilePacketImplCopyWith<_$chatterboxFilePacketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
