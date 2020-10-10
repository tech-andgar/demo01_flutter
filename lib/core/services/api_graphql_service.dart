// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// The service responsible for networking requests
class ApiGraphQL {
  static const endpoint = 'https://graphqlzero.almansi.me/api';
  final HttpLink httpLink = HttpLink(uri: endpoint);

  ValueNotifier<GraphQLClient> getClientGraphQL() {

    // final AuthLink authLink = AuthLink(
    //   getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    //   OR
    //   getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    // );

    // final Link bearerlink = authLink.concat(httpLink);

    return ValueNotifier(
      GraphQLClient(
        link: httpLink,
        cache: OptimisticCache(
          dataIdFromObject: typenameDataIdFromObject,
        ),
      ),
    );
  }

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
      link: httpLink,
    );
  }
}
