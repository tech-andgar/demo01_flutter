// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pagination_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) {
  return _PaginationLinks.fromJson(json);
}

class _$PaginationLinksTearOff {
  const _$PaginationLinksTearOff();

// ignore: unused_element
  _PaginationLinks call(
      {PageLimitPair first,
      PageLimitPair prev,
      PageLimitPair next,
      PageLimitPair last}) {
    return _PaginationLinks(
      first: first,
      prev: prev,
      next: next,
      last: last,
    );
  }
}

// ignore: unused_element
const $PaginationLinks = _$PaginationLinksTearOff();

mixin _$PaginationLinks {
  PageLimitPair get first;
  PageLimitPair get prev;
  PageLimitPair get next;
  PageLimitPair get last;

  Map<String, dynamic> toJson();
  $PaginationLinksCopyWith<PaginationLinks> get copyWith;
}

abstract class $PaginationLinksCopyWith<$Res> {
  factory $PaginationLinksCopyWith(
          PaginationLinks value, $Res Function(PaginationLinks) then) =
      _$PaginationLinksCopyWithImpl<$Res>;
  $Res call(
      {PageLimitPair first,
      PageLimitPair prev,
      PageLimitPair next,
      PageLimitPair last});

  $PageLimitPairCopyWith<$Res> get first;
  $PageLimitPairCopyWith<$Res> get prev;
  $PageLimitPairCopyWith<$Res> get next;
  $PageLimitPairCopyWith<$Res> get last;
}

class _$PaginationLinksCopyWithImpl<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._value, this._then);

  final PaginationLinks _value;
  // ignore: unused_field
  final $Res Function(PaginationLinks) _then;

  @override
  $Res call({
    Object first = freezed,
    Object prev = freezed,
    Object next = freezed,
    Object last = freezed,
  }) {
    return _then(_value.copyWith(
      first: first == freezed ? _value.first : first as PageLimitPair,
      prev: prev == freezed ? _value.prev : prev as PageLimitPair,
      next: next == freezed ? _value.next : next as PageLimitPair,
      last: last == freezed ? _value.last : last as PageLimitPair,
    ));
  }

  @override
  $PageLimitPairCopyWith<$Res> get first {
    if (_value.first == null) {
      return null;
    }
    return $PageLimitPairCopyWith<$Res>(_value.first, (value) {
      return _then(_value.copyWith(first: value));
    });
  }

  @override
  $PageLimitPairCopyWith<$Res> get prev {
    if (_value.prev == null) {
      return null;
    }
    return $PageLimitPairCopyWith<$Res>(_value.prev, (value) {
      return _then(_value.copyWith(prev: value));
    });
  }

  @override
  $PageLimitPairCopyWith<$Res> get next {
    if (_value.next == null) {
      return null;
    }
    return $PageLimitPairCopyWith<$Res>(_value.next, (value) {
      return _then(_value.copyWith(next: value));
    });
  }

  @override
  $PageLimitPairCopyWith<$Res> get last {
    if (_value.last == null) {
      return null;
    }
    return $PageLimitPairCopyWith<$Res>(_value.last, (value) {
      return _then(_value.copyWith(last: value));
    });
  }
}

abstract class _$PaginationLinksCopyWith<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  factory _$PaginationLinksCopyWith(
          _PaginationLinks value, $Res Function(_PaginationLinks) then) =
      __$PaginationLinksCopyWithImpl<$Res>;
  @override
  $Res call(
      {PageLimitPair first,
      PageLimitPair prev,
      PageLimitPair next,
      PageLimitPair last});

  @override
  $PageLimitPairCopyWith<$Res> get first;
  @override
  $PageLimitPairCopyWith<$Res> get prev;
  @override
  $PageLimitPairCopyWith<$Res> get next;
  @override
  $PageLimitPairCopyWith<$Res> get last;
}

class __$PaginationLinksCopyWithImpl<$Res>
    extends _$PaginationLinksCopyWithImpl<$Res>
    implements _$PaginationLinksCopyWith<$Res> {
  __$PaginationLinksCopyWithImpl(
      _PaginationLinks _value, $Res Function(_PaginationLinks) _then)
      : super(_value, (v) => _then(v as _PaginationLinks));

  @override
  _PaginationLinks get _value => super._value as _PaginationLinks;

  @override
  $Res call({
    Object first = freezed,
    Object prev = freezed,
    Object next = freezed,
    Object last = freezed,
  }) {
    return _then(_PaginationLinks(
      first: first == freezed ? _value.first : first as PageLimitPair,
      prev: prev == freezed ? _value.prev : prev as PageLimitPair,
      next: next == freezed ? _value.next : next as PageLimitPair,
      last: last == freezed ? _value.last : last as PageLimitPair,
    ));
  }
}

@JsonSerializable()
class _$_PaginationLinks implements _PaginationLinks {
  const _$_PaginationLinks({this.first, this.prev, this.next, this.last});

  factory _$_PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$_$_PaginationLinksFromJson(json);

  @override
  final PageLimitPair first;
  @override
  final PageLimitPair prev;
  @override
  final PageLimitPair next;
  @override
  final PageLimitPair last;

  @override
  String toString() {
    return 'PaginationLinks(first: $first, prev: $prev, next: $next, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaginationLinks &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.prev, prev) ||
                const DeepCollectionEquality().equals(other.prev, prev)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.last, last) ||
                const DeepCollectionEquality().equals(other.last, last)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(prev) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(last);

  @override
  _$PaginationLinksCopyWith<_PaginationLinks> get copyWith =>
      __$PaginationLinksCopyWithImpl<_PaginationLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaginationLinksToJson(this);
  }
}

abstract class _PaginationLinks implements PaginationLinks {
  const factory _PaginationLinks(
      {PageLimitPair first,
      PageLimitPair prev,
      PageLimitPair next,
      PageLimitPair last}) = _$_PaginationLinks;

  factory _PaginationLinks.fromJson(Map<String, dynamic> json) =
      _$_PaginationLinks.fromJson;

  @override
  PageLimitPair get first;
  @override
  PageLimitPair get prev;
  @override
  PageLimitPair get next;
  @override
  PageLimitPair get last;
  @override
  _$PaginationLinksCopyWith<_PaginationLinks> get copyWith;
}
