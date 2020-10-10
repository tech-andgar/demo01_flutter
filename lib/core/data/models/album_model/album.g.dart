// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Album _$_$_AlbumFromJson(Map<String, dynamic> json) {
  return _$_Album(
    id: json['id'] as String,
    title: json['title'] as String,
    user: json['user'] == null ? null : User.fromJson(json['user']),
    // photos: json['photos'] == null ? null : PhotosPage.fromJson(json['photos']),
  );
}

Map<String, dynamic> _$_$_AlbumToJson(_$_Album instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'user': instance.user,
      'photos': instance.photos,
    };
