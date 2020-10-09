// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'page_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PageMetadata _$PageMetadataFromJson(Map<String, dynamic> json) {
  return _PageMetadata.fromJson(json);
}

class _$PageMetadataTearOff {
  const _$PageMetadataTearOff();

// ignore: unused_element
  _PageMetadata call({int totalCount}) {
    return _PageMetadata(
      totalCount: totalCount,
    );
  }
}

// ignore: unused_element
const $PageMetadata = _$PageMetadataTearOff();

mixin _$PageMetadata {
  int get totalCount;

  Map<String, dynamic> toJson();
  $PageMetadataCopyWith<PageMetadata> get copyWith;
}

abstract class $PageMetadataCopyWith<$Res> {
  factory $PageMetadataCopyWith(
          PageMetadata value, $Res Function(PageMetadata) then) =
      _$PageMetadataCopyWithImpl<$Res>;
  $Res call({int totalCount});
}

class _$PageMetadataCopyWithImpl<$Res> implements $PageMetadataCopyWith<$Res> {
  _$PageMetadataCopyWithImpl(this._value, this._then);

  final PageMetadata _value;
  // ignore: unused_field
  final $Res Function(PageMetadata) _then;

  @override
  $Res call({
    Object totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
    ));
  }
}

abstract class _$PageMetadataCopyWith<$Res>
    implements $PageMetadataCopyWith<$Res> {
  factory _$PageMetadataCopyWith(
          _PageMetadata value, $Res Function(_PageMetadata) then) =
      __$PageMetadataCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount});
}

class __$PageMetadataCopyWithImpl<$Res> extends _$PageMetadataCopyWithImpl<$Res>
    implements _$PageMetadataCopyWith<$Res> {
  __$PageMetadataCopyWithImpl(
      _PageMetadata _value, $Res Function(_PageMetadata) _then)
      : super(_value, (v) => _then(v as _PageMetadata));

  @override
  _PageMetadata get _value => super._value as _PageMetadata;

  @override
  $Res call({
    Object totalCount = freezed,
  }) {
    return _then(_PageMetadata(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
    ));
  }
}

@JsonSerializable()
class _$_PageMetadata implements _PageMetadata {
  const _$_PageMetadata({this.totalCount});

  factory _$_PageMetadata.fromJson(Map<String, dynamic> json) =>
      _$_$_PageMetadataFromJson(json);

  @override
  final int totalCount;

  @override
  String toString() {
    return 'PageMetadata(totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageMetadata &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(totalCount);

  @override
  _$PageMetadataCopyWith<_PageMetadata> get copyWith =>
      __$PageMetadataCopyWithImpl<_PageMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageMetadataToJson(this);
  }
}

abstract class _PageMetadata implements PageMetadata {
  const factory _PageMetadata({int totalCount}) = _$_PageMetadata;

  factory _PageMetadata.fromJson(Map<String, dynamic> json) =
      _$_PageMetadata.fromJson;

  @override
  int get totalCount;
  @override
  _$PageMetadataCopyWith<_PageMetadata> get copyWith;
}
