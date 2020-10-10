// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/material.dart';
import 'package:demo_andres_garcia_needzaio/ui/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

const kTextTitleApp = 'USERAPP';
const kPrimaryColor = Color(0xFFFEDD7C);
const kSecondaryColor = Color(0xFF1A1A1A);
const kTertiaryColor = Color(0xFF344C69);
const kPrimaryLightColor = Color(0xFFFFFFFF);
// const kPrimaryGradientColor =
//     LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFA53E), Color(0xFFFF7643)]);
const kTitleColor = Color(0xFF1A1A1A);
const kTextColor = Color(0xFF1A1A1A);

const kAnimationDuration = Duration(milliseconds: 200);

final kHeadingStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontSize: getProportionteScreenWidth(35),
  fontWeight: FontWeight.bold,
  height: 1.5,
);

const String kNotHaveAccount = 'Don´t have an account?';
const String kIncorrectAccountOrPass = 'Contraseña y/o nombre de cuenta incorrecto';
const String kEmailNullError = 'Por favor escriba su email';
const String kInvalidEmailError = 'Por favor escriba correctamente su email';
const String kPassNullError = 'Por favor escriba su contraseña';
const String kSortPassError = 'Su contraseña es muy debil';
const String kMatchPassError = 'Su contraseña no concuerda ingresa';
const String kNameFirstNullError = 'Por favor escriba su nombre';
const String kNameLastNullError = 'Por favor escriba su apellido';
const String kPhoneNumberNullError = 'Por favor escriba su número teléfono';
const String kAddressNullError = 'Por favor escriba su dirección';

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionteScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
  );
}

final double kDefaultPadding = 20.0;

final BoxShadow kDefaultShadow = BoxShadow(
  offset: Offset(5, 5),
  blurRadius: 10,
  color: Color(0xFFE9E9E9).withOpacity(0.56),
);
