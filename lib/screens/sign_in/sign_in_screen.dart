// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:demo_andres_garcia_needzaio/domain/usecases/loadingProgressProvider.dart';
import 'package:flutter/material.dart';
import 'package:demo_andres_garcia_needzaio/screens/sign_in/components/sign_in_body.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  static String routeName = '/sign_in';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    bool loadingProgress = false;

    var loadingProgressProvider = Provider.of<LoadingProgressProvider>(context);
    setState(() {
      loadingProgress = loadingProgressProvider.loadingProgress;
    });

    return Scaffold(
      body: ModalProgressHUD(
        progressIndicator: CircularProgressIndicator(
          backgroundColor: kTertiaryColor,
          valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
          strokeWidth: 7,
        ),
        inAsyncCall: loadingProgress,
        child: SignInBody(), // here show is bool value, which is used to when to show the progess indicator
      ),
    );
  }
}
