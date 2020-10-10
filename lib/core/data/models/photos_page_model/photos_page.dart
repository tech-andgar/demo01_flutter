// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/core/data/models/page_metadata/page_metadata.dart';
import 'package:demo_andres_garcia_needzaio/core/data/models/pagination_links_model/pagination_links.dart';
import 'package:demo_andres_garcia_needzaio/core/data/models/photo_model/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'photos_page.freezed.dart';
part 'photos_page.g.dart';

@freezed
abstract class PhotosPage with _$PhotosPage {
  const factory PhotosPage({
    List<Photo> data,
    PaginationLinks links,
    PageMetadata meta,
  }) = _PhotosPage;


  // ignore: non_constant_identifier_names
  // factory PhotosPage.fromJson(Map<String, dynamic json>) => _$PhotosPageFromJson(json);
}
