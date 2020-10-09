// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

class _$AlbumTearOff {
  const _$AlbumTearOff();

// ignore: unused_element
  _Album call({String id, String title, User user, PhotosPage photos}) {
    return _Album(
      id: id,
      title: title,
      user: user,
      photos: photos,
    );
  }
}

// ignore: unused_element
const $Album = _$AlbumTearOff();

mixin _$Album {
  String get id;
  String get title;
  User get user;
  PhotosPage get photos;

  Map<String, dynamic> toJson();
  $AlbumCopyWith<Album> get copyWith;
}

abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res>;
  $Res call({String id, String title, User user, PhotosPage photos});

  $UserCopyWith<$Res> get user;
  $PhotosPageCopyWith<$Res> get photos;
}

class _$AlbumCopyWithImpl<$Res> implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  final Album _value;
  // ignore: unused_field
  final $Res Function(Album) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object user = freezed,
    Object photos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      user: user == freezed ? _value.user : user as User,
      photos: photos == freezed ? _value.photos : photos as PhotosPage,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $PhotosPageCopyWith<$Res> get photos {
    if (_value.photos == null) {
      return null;
    }
    return $PhotosPageCopyWith<$Res>(_value.photos, (value) {
      return _then(_value.copyWith(photos: value));
    });
  }
}

abstract class _$AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$AlbumCopyWith(_Album value, $Res Function(_Album) then) =
      __$AlbumCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, User user, PhotosPage photos});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PhotosPageCopyWith<$Res> get photos;
}

class __$AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res>
    implements _$AlbumCopyWith<$Res> {
  __$AlbumCopyWithImpl(_Album _value, $Res Function(_Album) _then)
      : super(_value, (v) => _then(v as _Album));

  @override
  _Album get _value => super._value as _Album;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object user = freezed,
    Object photos = freezed,
  }) {
    return _then(_Album(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      user: user == freezed ? _value.user : user as User,
      photos: photos == freezed ? _value.photos : photos as PhotosPage,
    ));
  }
}

@JsonSerializable()
class _$_Album implements _Album {
  const _$_Album({this.id, this.title, this.user, this.photos});

  factory _$_Album.fromJson(Map<String, dynamic> json) =>
      _$_$_AlbumFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final User user;
  @override
  final PhotosPage photos;

  @override
  String toString() {
    return 'Album(id: $id, title: $title, user: $user, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Album &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(photos);

  @override
  _$AlbumCopyWith<_Album> get copyWith =>
      __$AlbumCopyWithImpl<_Album>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AlbumToJson(this);
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {String id, String title, User user, PhotosPage photos}) = _$_Album;

  factory _Album.fromJson(Map<String, dynamic> json) = _$_Album.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  User get user;
  @override
  PhotosPage get photos;
  @override
  _$AlbumCopyWith<_Album> get copyWith;
}
