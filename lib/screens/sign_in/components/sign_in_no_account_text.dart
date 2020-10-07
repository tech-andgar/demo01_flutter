// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/material.dart';
import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:demo_andres_garcia_needzaio/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            kNotHaveAccount,
            style: TextStyle(fontSize: getProportionteScreenWidth(16), color: Colors.black.withOpacity(0.4)),
          ),
          Spacer(),
          InkWell(
            // onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Sign up".toUpperCase(),
                style: TextStyle(fontSize: getProportionteScreenWidth(16), fontWeight: FontWeight.bold, color: kPrimaryColor),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
