// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'dart:async';
import 'package:demo_andres_garcia_needzaio/ui/components/button/default_button.dart';
import 'package:demo_andres_garcia_needzaio/ui/components/custom_surffix_icon.dart';
import 'package:demo_andres_garcia_needzaio/ui/constants.dart';
import 'package:demo_andres_garcia_needzaio/core/data/data_sources/loadingProgressProvider.dart';
import 'package:demo_andres_garcia_needzaio/ui/screens/home/home_screen.dart';
import 'package:demo_andres_garcia_needzaio/ui/screens/sign_in/components/form_error.dart';
import 'package:demo_andres_garcia_needzaio/ui/size_config.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SignInForm extends StatefulWidget {
  final List<FocusNode> nodesText;

  SignInForm({Key key, this.nodesText}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(focusNode: widget.nodesText[0]),
          SizedBox(height: getProportionteScreenHeight(20)),
          buildPasswordFormField(focusNode: widget.nodesText[1]),
          SizedBox(height: getProportionteScreenHeight(10)),
          FormErrors(errors: errors),
          SizedBox(height: getProportionteScreenHeight(30)),
          SizedBox(
            width: double.infinity,
            height: getProportionteScreenWidth(40),
            child: DefaultButton(
              backgroundColor: (errors.length > 0) ? kPrimaryColor.withOpacity(0.4) : kPrimaryColor,
              splashColor: kSecondaryColor,
              text: 'SIGN IN',
              fontWeight: FontWeight.w500,
              press: (errors.length > 0)
                  ? null
                  : () async {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        for (var item in widget.nodesText) {
                          item.unfocus();
                        }
                        var loadingProgressProvider = Provider.of<LoadingProgressProvider>(context, listen: false);
                        loadingProgressProvider.startLoadingProgress();
                        // bool authValid = await signInWithEmail(email: _email, password: _password);
                        Future.delayed(
                          Duration(seconds: 3),
                          () {
                            loadingProgressProvider.stopLoadingProgress();
                            Navigator.pushNamed(context, HomeScreen.routeName);
                          },
                        );

                        // if (authValid) {
                        // } else {
                        //   // Navigator.pushNamed(context, LoginUnsuccessScreen.routeName);
                        // }
                      }
                    },
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField({FocusNode focusNode}) {
    return TextFormField(
      obscureText: true,
      focusNode: focusNode,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (newValue) => _password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        }
        if (value.length >= 8) {
          removeError(error: kSortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return '';
        } else if (value.length < 8) {
          addError(error: kSortPassError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Color(0xFF2E2E2E)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF344C69)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF344C69)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF344C69)),
        ),
        labelText: 'Contraseña',
        hintText: 'Ingresa su contraseña',
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.lock,
        ),
      ),
    );
  }

  TextFormField buildEmailFormField({FocusNode focusNode}) {
    return TextFormField(
      focusNode: focusNode,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => _email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        }
        if (EmailValidator.validate(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return '';
        } else if (!EmailValidator.validate(value)) {
          addError(error: kInvalidEmailError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Color(0xFF2E2E2E)),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF344C69)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF344C69)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF344C69)),
        ),
        labelText: 'Email',
        hintText: 'Ingresa su email',
        prefixIcon: CustomSurffixIcon(
          icon: FontAwesomeIcons.user,
        ),
      ),
    );
  }
}
