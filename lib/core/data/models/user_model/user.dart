// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/core/data/models/address_model/address.dart';
import 'package:demo_andres_garcia_needzaio/core/data/models/company_model/company.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String id,
    String name,
    String username,
    String email,
    Address address,
    String phone,
    String website,
    Company company,
  }) = _User;

 static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: json['address'] == null ? null : Address.fromJson(json['address']),
      phone: json['phone'] as String,
      website: json['website'] as String,
      company: json['company'] == null ? null : Company.fromJson(json['company']),
    );
  }
}
