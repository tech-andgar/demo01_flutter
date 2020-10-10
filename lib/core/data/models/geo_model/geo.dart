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

  static Geo fromJson(Map<String, dynamic> json) {
    return Geo(
      lat: (json['lat'] as num)?.toDouble(),
      lng: (json['lng'] as num)?.toDouble(),
    );
  }
}
