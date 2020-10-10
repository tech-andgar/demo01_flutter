// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/core/data/models/geo_model/geo.dart';
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

  static Address fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: json['geo'] == null ? null : Geo.fromJson(json['geo']),
    );
  }

  // ignore: non_constant_identifier_names
  // factory Address.fromJson(Map<String, dynamic json>) => _$AddressFromJson(json);
}
