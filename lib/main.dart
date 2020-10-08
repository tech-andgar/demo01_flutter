// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:demo_andres_garcia_needzaio/domain/usecases/loadingProvider.dart';
import 'package:demo_andres_garcia_needzaio/routes.dart';
import 'package:demo_andres_garcia_needzaio/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoadingProgress()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kTextTitleApp,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}