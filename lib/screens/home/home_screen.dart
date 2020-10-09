// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:demo_andres_garcia_needzaio/components/custom_app_bar.dart';
import 'package:demo_andres_garcia_needzaio/screens/home/components/home_body.dart';
import 'package:demo_andres_garcia_needzaio/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(),
      body: HomeBody(),
    );
  }
}
