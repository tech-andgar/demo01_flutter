// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'page_limit_pair.freezed.dart';
part 'page_limit_pair.g.dart';

@freezed
abstract class PageLimitPair with _$PageLimitPair {
  const factory PageLimitPair({
    int page,
    int limit,
  }) = _PageLimitPair;


  // factory PageLimitPair.fromJson(Map<String, dynamic json>) => _$PageLimitPairFromJson(json);
}
