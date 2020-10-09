// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/widgets.dart';
import 'package:demo_andres_garcia_needzaio/screens/home/home_screen.dart';
import 'package:demo_andres_garcia_needzaio/screens/splash/splash_screen.dart';
import 'package:demo_andres_garcia_needzaio/screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
