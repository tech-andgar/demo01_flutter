// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/core/data/data_sources/loadingProgressProvider.dart';
import 'package:demo_andres_garcia_needzaio/core/services/api_graphql_service.dart';
import 'package:demo_andres_garcia_needzaio/locator.dart';
import 'package:demo_andres_garcia_needzaio/ui/constants.dart';
import 'package:demo_andres_garcia_needzaio/routes.dart';
import 'package:demo_andres_garcia_needzaio/ui/screens/home/home_screen.dart';
import 'package:demo_andres_garcia_needzaio/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoadingProgressProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ApiGraphQL _api = locator<ApiGraphQL>();
    ValueNotifier<GraphQLClient> client = _api.getClientGraphQL();

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kTextTitleApp,
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
