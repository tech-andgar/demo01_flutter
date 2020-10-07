// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/material.dart';
import 'package:demo_andres_garcia_needzaio/size_config.dart';
import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.backgroundColor = kPrimaryColor,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);
  final String text;
  final Function press;
  final Color backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionteScreenWidth(36),
      child: Material(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: InkWell(
          splashColor: kPrimaryColor,
          onTap: press,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.montserrat(
                  letterSpacing: 1.8,
                  color: textColor,
                  fontSize: getProportionteScreenWidth(19),
                  fontWeight: fontWeight,
                  height: 1.25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
