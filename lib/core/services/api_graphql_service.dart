import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// The service responsible for networking requests
class ApiGraphQL {
  static const endpoint = 'https://graphqlzero.almansi.me/api';

  ValueNotifier<GraphQLClient> getClientGraphQL() {
    final HttpLink httpLink = HttpLink(uri: endpoint);

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
}
