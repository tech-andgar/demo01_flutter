// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/core/data/models/page_limit_pair_model/page_limit_pair.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagination_links.freezed.dart';
part 'pagination_links.g.dart';

@freezed
abstract class PaginationLinks with _$PaginationLinks {
  const factory PaginationLinks({
    PageLimitPair first,
    PageLimitPair prev,
    PageLimitPair next,
    PageLimitPair last,
  }) = _PaginationLinks;


  factory PaginationLinks.fromJson(Map<String, dynamic json>) => _$PaginationLinksFromJson(json);
}
