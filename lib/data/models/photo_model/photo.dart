// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/data/models/album_model/album.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
abstract class Photo with _$Photo {
  const factory Photo({
    String id,
    String title,
    String url,
    String thumbnailUrl,
    Album album,
  }) = _Photo;


  factory Photo.fromJson(Map<String, dynamic json>) => _$PhotoFromJson(json);
}
