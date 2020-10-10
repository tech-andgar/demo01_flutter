// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'page_limit_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PageLimitPair _$PageLimitPairFromJson(Map<String, dynamic> json) {
  return _PageLimitPair.fromJson(json);
}

class _$PageLimitPairTearOff {
  const _$PageLimitPairTearOff();

// ignore: unused_element
  _PageLimitPair call({int page, int limit}) {
    return _PageLimitPair(
      page: page,
      limit: limit,
    );
  }
}

// ignore: unused_element
const $PageLimitPair = _$PageLimitPairTearOff();

mixin _$PageLimitPair {
  int get page;
  int get limit;

  Map<String, dynamic> toJson();
  $PageLimitPairCopyWith<PageLimitPair> get copyWith;
}

abstract class $PageLimitPairCopyWith<$Res> {
  factory $PageLimitPairCopyWith(
          PageLimitPair value, $Res Function(PageLimitPair) then) =
      _$PageLimitPairCopyWithImpl<$Res>;
  $Res call({int page, int limit});
}

class _$PageLimitPairCopyWithImpl<$Res>
    implements $PageLimitPairCopyWith<$Res> {
  _$PageLimitPairCopyWithImpl(this._value, this._then);

  final PageLimitPair _value;
  // ignore: unused_field
  final $Res Function(PageLimitPair) _then;

  @override
  $Res call({
    Object page = freezed,
    Object limit = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
      limit: limit == freezed ? _value.limit : limit as int,
    ));
  }
}

abstract class _$PageLimitPairCopyWith<$Res>
    implements $PageLimitPairCopyWith<$Res> {
  factory _$PageLimitPairCopyWith(
          _PageLimitPair value, $Res Function(_PageLimitPair) then) =
      __$PageLimitPairCopyWithImpl<$Res>;
  @override
  $Res call({int page, int limit});
}

class __$PageLimitPairCopyWithImpl<$Res>
    extends _$PageLimitPairCopyWithImpl<$Res>
    implements _$PageLimitPairCopyWith<$Res> {
  __$PageLimitPairCopyWithImpl(
      _PageLimitPair _value, $Res Function(_PageLimitPair) _then)
      : super(_value, (v) => _then(v as _PageLimitPair));

  @override
  _PageLimitPair get _value => super._value as _PageLimitPair;

  @override
  $Res call({
    Object page = freezed,
    Object limit = freezed,
  }) {
    return _then(_PageLimitPair(
      page: page == freezed ? _value.page : page as int,
      limit: limit == freezed ? _value.limit : limit as int,
    ));
  }
}

@JsonSerializable()
class _$_PageLimitPair implements _PageLimitPair {
  const _$_PageLimitPair({this.page, this.limit});

  factory _$_PageLimitPair.fromJson(Map<String, dynamic> json) =>
      _$_$_PageLimitPairFromJson(json);

  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'PageLimitPair(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageLimitPair &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(limit);

  @override
  _$PageLimitPairCopyWith<_PageLimitPair> get copyWith =>
      __$PageLimitPairCopyWithImpl<_PageLimitPair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PageLimitPairToJson(this);
  }
}

abstract class _PageLimitPair implements PageLimitPair {
  const factory _PageLimitPair({int page, int limit}) = _$_PageLimitPair;

  factory _PageLimitPair.fromJson(Map<String, dynamic> json) =
      _$_PageLimitPair.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @override
  _$PageLimitPairCopyWith<_PageLimitPair> get copyWith;
}
