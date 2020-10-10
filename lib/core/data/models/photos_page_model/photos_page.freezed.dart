// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'photos_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PhotosPage _$PhotosPageFromJson(Map<String, dynamic> json) {
  return _PhotosPage.fromJson(json);
}

class _$PhotosPageTearOff {
  const _$PhotosPageTearOff();

// ignore: unused_element
  _PhotosPage call(
      {List<Photo> data, PaginationLinks links, PageMetadata meta}) {
    return _PhotosPage(
      data: data,
      links: links,
      meta: meta,
    );
  }
}

// ignore: unused_element
const $PhotosPage = _$PhotosPageTearOff();

mixin _$PhotosPage {
  List<Photo> get data;
  PaginationLinks get links;
  PageMetadata get meta;

  Map<String, dynamic> toJson();
  $PhotosPageCopyWith<PhotosPage> get copyWith;
}

abstract class $PhotosPageCopyWith<$Res> {
  factory $PhotosPageCopyWith(
          PhotosPage value, $Res Function(PhotosPage) then) =
      _$PhotosPageCopyWithImpl<$Res>;
  $Res call({List<Photo> data, PaginationLinks links, PageMetadata meta});

  $PaginationLinksCopyWith<$Res> get links;
  $PageMetadataCopyWith<$Res> get meta;
}

class _$PhotosPageCopyWithImpl<$Res> implements $PhotosPageCopyWith<$Res> {
  _$PhotosPageCopyWithImpl(this._value, this._then);

  final PhotosPage _value;
  // ignore: unused_field
  final $Res Function(PhotosPage) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<Photo>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as PageMetadata,
    ));
  }

  @override
  $PaginationLinksCopyWith<$Res> get links {
    if (_value.links == null) {
      return null;
    }
    return $PaginationLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $PageMetadataCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $PageMetadataCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

abstract class _$PhotosPageCopyWith<$Res> implements $PhotosPageCopyWith<$Res> {
  factory _$PhotosPageCopyWith(
          _PhotosPage value, $Res Function(_PhotosPage) then) =
      __$PhotosPageCopyWithImpl<$Res>;
  @override
  $Res call({List<Photo> data, PaginationLinks links, PageMetadata meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $PageMetadataCopyWith<$Res> get meta;
}

class __$PhotosPageCopyWithImpl<$Res> extends _$PhotosPageCopyWithImpl<$Res>
    implements _$PhotosPageCopyWith<$Res> {
  __$PhotosPageCopyWithImpl(
      _PhotosPage _value, $Res Function(_PhotosPage) _then)
      : super(_value, (v) => _then(v as _PhotosPage));

  @override
  _PhotosPage get _value => super._value as _PhotosPage;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_PhotosPage(
      data: data == freezed ? _value.data : data as List<Photo>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as PageMetadata,
    ));
  }
}

@JsonSerializable()
class _$_PhotosPage implements _PhotosPage {
  const _$_PhotosPage({this.data, this.links, this.meta});

  factory _$_PhotosPage.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotosPageFromJson(json);

  @override
  final List<Photo> data;
  @override
  final PaginationLinks links;
  @override
  final PageMetadata meta;

  @override
  String toString() {
    return 'PhotosPage(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotosPage &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(meta);

  @override
  _$PhotosPageCopyWith<_PhotosPage> get copyWith =>
      __$PhotosPageCopyWithImpl<_PhotosPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotosPageToJson(this);
  }
}

abstract class _PhotosPage implements PhotosPage {
  const factory _PhotosPage(
      {List<Photo> data,
      PaginationLinks links,
      PageMetadata meta}) = _$_PhotosPage;

  factory _PhotosPage.fromJson(Map<String, dynamic> json) =
      _$_PhotosPage.fromJson;

  @override
  List<Photo> get data;
  @override
  PaginationLinks get links;
  @override
  PageMetadata get meta;
  @override
  _$PhotosPageCopyWith<_PhotosPage> get copyWith;
}
