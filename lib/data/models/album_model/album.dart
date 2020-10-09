// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/data/models/photos_page_model/photos_page.dart';
import 'package:demo_andres_garcia_needzaio/data/models/user_model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'album.freezed.dart';
part 'album.g.dart';

@freezed
abstract class Album with _$Album {
  const factory Album({
    String id,
    String title,
    User user,
    PhotosPage photos/* (options: PageQueryOptions )*/
  }) = _Album;


  factory Album.fromJson(Map<String, dynamic json>) => _$AlbumFromJson(json);
}
