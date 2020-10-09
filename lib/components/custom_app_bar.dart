// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/components/custom_icon_nav_bar_icons.dart';
import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:demo_andres_garcia_needzaio/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomAppBar extends PreferredSize {
  @override
  Size get preferredSize {
    return new Size.fromHeight(getProportionteScreenWidth(60));
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      shape: ContinuousRectangleBorder(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60)
        ),
      ),
      title: GNav(
          gap: 8,
          activeColor: Colors.white,
          iconSize: 24,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          duration: Duration(milliseconds: 800),
          tabBackgroundColor: Colors.grey[800],
          tabs: [
            GButton(
              icon: CustomIconNavBar.home,
              text: 'Home',
              textStyle: GoogleFonts.montserrat(color: Colors.black, fontSize: getProportionteScreenWidth(12)),
              iconColor: Colors.black,
              backgroundColor: kPrimaryColor,
              iconActiveColor: Colors.black,
            ),
            GButton(
              icon: CustomIconNavBar.speech_bubble,
              text: 'Chat',
              textStyle: GoogleFonts.montserrat(color: Colors.black, fontSize: getProportionteScreenWidth(12)),
              iconColor: Colors.black,
              backgroundColor: kPrimaryColor,
              iconActiveColor: Colors.black,
            ),
            GButton(
              icon: CustomIconNavBar.heart,
              iconColor: Colors.black,
              text: 'Favorites',
            ),
            GButton(
              icon: CustomIconNavBar.user,
              iconColor: Colors.black,
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            // setState(() {
            //   _selectedIndex = index;
            // });
          }),
    );
  }
}