// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.


import 'package:demo_andres_garcia_needzaio/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:demo_andres_garcia_needzaio/size_config.dart';

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key key,
    @required this.icon, this.color = kPrimaryColor,
  }) : super(key: key);

  final dynamic icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionteScreenWidth(20),
        getProportionteScreenWidth(20),
        getProportionteScreenWidth(20),
      ),
      child: _buildIconCheckType(icon),
    );
  }

  Widget _buildIconCheckType(dynamic icon) {
    if (icon is String) {
      return (icon.contains('svg'))
          ? SvgPicture.asset(
              icon,
              height: getProportionteScreenHeight(265),
              width: getProportionteScreenWidth(235),
              color: color,
            )
          : Image.asset(
              icon,
              height: getProportionteScreenHeight(265),
              width: getProportionteScreenWidth(235),
            );
    } else if (icon is IconData) {
      return Icon(
        icon,
        size: getProportionteScreenWidth(24),
        color: color,
      );
    } else {
      throw ErrorWidget('unknow type icon');
    }
  }
}
