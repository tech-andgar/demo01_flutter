// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/data/models/geo_model/geo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';
part 'address.g.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
      String street,
      String suite,
      String city,
      String zipcode,
      Geo geo,
  }) = _Address;


  // ignore: non_constant_identifier_names
  factory Address.fromJson(Map<String, dynamic json>) => _$AddressFromJson(json);
}
