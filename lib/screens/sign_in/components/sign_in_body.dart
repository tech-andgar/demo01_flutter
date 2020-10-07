// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:demo_andres_garcia_needzaio/size_config.dart';
import 'package:demo_andres_garcia_needzaio/screens/sign_in/components/sign_in_no_account_text.dart';
import 'package:demo_andres_garcia_needzaio/screens/sign_in/components/sign_in_form.dart';

class SignInBody extends StatefulWidget {
  @override
  _SignInBodyState createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();

  Widget _buttonListo(node) {
    return GestureDetector(
      onTap: () => node.unfocus(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          "LISTO",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          focusNode: _nodeText1,
          toolbarButtons: [
            (node) => _buttonListo(node),
          ],
        ),
        KeyboardActionsItem(
          focusNode: _nodeText2,
          toolbarButtons: [
            (node) => _buttonListo(node),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      config: _buildConfig(context),
      child: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                height: 625,
                width: SizeConfig.screenWidth,
                // child: Center(
                //   child: Text('background'),
                // ),
                color: kPrimaryColor,
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight / 3.35,
              // right: getProportionteScreenWidth(50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getProportionteScreenWidth(80),
                    ),
                  ),
                ),
                height: getProportionteScreenWidth(550),
                width: SizeConfig.screenWidth,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionteScreenWidth(40),
                      ),
                      child: Column(
                        children: [
                          SignInForm(nodesText: [_nodeText1, _nodeText2]),
                          SizedBox(height: getProportionteScreenHeight(30)),
                          NoAccountText()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.screenWidth / 128,
              left: SizeConfig.screenWidth / 4,
              child: Container(
                height: SizeConfig.screenHeight / 2.65,
                width: SizeConfig.screenWidth / 2,
                child: Image.asset(
                  'assets/images/personaje@3x.png',
                  // height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
