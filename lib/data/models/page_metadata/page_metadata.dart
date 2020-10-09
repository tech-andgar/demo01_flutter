// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'page_metadata.freezed.dart';
part 'page_metadata.g.dart';

@freezed
abstract class PageMetadata with _$PageMetadata {
  const factory PageMetadata({
    int totalCount,
  }) = _PageMetadata;


  factory PageMetadata.fromJson(Map<String, dynamic json>) => _$PageMetadataFromJson(json);
}
