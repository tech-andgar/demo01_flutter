// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

// import 'package:demo_andres_garcia_needzaio/domain/usecases/locationService.dart';
// import 'package:demo_andres_garcia_needzaio/screens/home/home_screen.dart';
// import 'package:demo_andres_garcia_needzaio/screens/splash/components/splash_content.dart';
// import 'package:demo_andres_garcia_needzaio/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:demo_andres_garcia_needzaio/components/button/default_button.dart';
import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:demo_andres_garcia_needzaio/size_config.dart';
import 'package:demo_andres_garcia_needzaio/screens/sign_in/sign_in_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location/location.dart';

class SplashBody extends StatefulWidget {
  SplashBody({Key key}) : super(key: key);
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    checkLocationSericesInDevice();
  }

  PermissionStatus _permissionGranted;
  Location location = Location();
  LocationData _locationData;
  bool _serviceEnabled;

  checkLocationSericesInDevice() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        print('User disallowed GPS');
        return;
      }
      print('User allowed GPS');
    }
    print('GPS ENABLED');

    _permissionGranted = await location.hasPermission();

    if (_permissionGranted == PermissionStatus.denied) {
      print('PermissionStatus denied or deniedForever and Request Autorization');
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        print('User disallowed');
        return;
      }
      print('User allowed before');
    }
    print('User allowed');

    setState(() {
      _permissionGranted = _permissionGranted;
    });

    _locationData = await location.getLocation();
  }

  final text =
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: kPrimaryColor),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: getProportionteScreenWidth(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            kTextTitleApp,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: getProportionteScreenWidth(35)),
                          ),
                          Padding(padding: EdgeInsets.only(top: 18)),
                          Text(
                            "${text.substring(0, 130)}",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              color: kTitleColor,
                              fontSize: getProportionteScreenWidth(17),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 22)),
                          SizedBox(
                            width: double.infinity,
                            height: getProportionteScreenWidth(49),
                            child: DefaultButton(
                              backgroundColor: (_permissionGranted == PermissionStatus.granted)
                                  ? kTextColor
                                  : kTextColor.withOpacity(0.2),
                              fontWeight: FontWeight.w400,
                              text: 'IR A LOGIN',
                              press: (_permissionGranted == PermissionStatus.granted)
                                  ? () {
                                      Navigator.pushNamed(context, SignInScreen.routeName);
                                    }
                                  : null,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 280)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 280,
            right: -160,
            child: Container(
              width: 700,
              height: 700,
              child: Image.asset(
                'assets/images/personaje@3x.png',
                // height: 100,
              ),
            ),
          )
        ],
        // ignore: deprecated_member_use
        overflow: Overflow.visible,
      ),
    );
  }
}
