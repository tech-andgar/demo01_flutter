// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/widgets.dart';
// import 'package:demo_andres_garcia_needzaio/screens/complete_profile/complete_profile_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/forgot_password/forgot_password_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/home/home_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/login_success/login_success_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/login_unsuccess/login_unsuccess_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/otp/otp_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/request_service/request_service_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/sign_in/sign_in_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/sign_up/sign_up_screen.dart';
import 'package:demo_andres_garcia_needzaio/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  // SignInScreen.routeName: (context) => SignInScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // LoginUnsuccessScreen.routeName: (context) => LoginUnsuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // RequestServiceScreen.routeName: (context) => RequestServiceScreen(),
};
