// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:freezed_annotation/freezed_annotation.dart';
part 'geo.freezed.dart';
part 'geo.g.dart';

@freezed
abstract class Geo with _$Geo {
  const factory Geo({
  double lat,
  double lng,
  }) = _Geo;


  factory Geo.fromJson(Map<String, dynamic json>) => _$GeoFromJson(json);
}
