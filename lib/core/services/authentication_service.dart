
// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'dart:async';
import 'package:demo_andres_garcia_needzaio/locator.dart';
import 'package:demo_andres_garcia_needzaio/core/data/models/user_model/user.dart';
import 'package:demo_andres_garcia_needzaio/core/services/api_graphql_service.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AuthenticationService {
  ApiGraphQL _api = locator<ApiGraphQL>();

  String queryGetAllUsers = """
  query ReadRepositories() {
    users {
      data {
        id
        name
        email
        phone
        albums{
          data{
            photos{
              data{
                thumbnailUrl
              }
            }
          }
        }
      }
    }
  }
""";

  Future<bool> signInWithEmail({String email, String password}) async {
    GraphQLClient _client = _api.clientToQuery();
    QueryOptions options = QueryOptions(
      documentNode: gql(queryGetAllUsers), // this is the query string you just created
    );
    QueryResult result = await _client.query(options);
    List usersDataList = result.data['users']['data'];
    // List<User> users = [];
    for (Map<String, dynamic> userData in usersDataList) {
      User user = User.fromJson(userData);
      // users.add(user);
      String userPassword = user.phone;
      userPassword = userPassword.replaceAll('-', '');
      userPassword = userPassword.replaceAll('x', '');
      userPassword = userPassword.replaceAll('.', '');
      userPassword = userPassword.replaceAll('(', '');
      userPassword = userPassword.replaceAll(')', '');

      String userEmail = user.email;
      userEmail = userEmail.toLowerCase();

      print("User email :$userEmail");
      print("User password :$userPassword");

      if (userEmail == email.toLowerCase() && userPassword == password) {
        print('Found user match');
        return true;
      }
    }
    return false;
  }
}
