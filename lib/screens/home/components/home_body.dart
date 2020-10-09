// Copyright (c) 2020,
// Andrés García <dev@tech-andgar.me>
// All rights reserved.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:demo_andres_garcia_needzaio/size_config.dart';
import 'package:demo_andres_garcia_needzaio/components/custom_list_item.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionteScreenWidth(20),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: getProportionteScreenHeight(30)),
              Row(
                children: [
                  Text(
                    'Contactos'.toUpperCase(),
                    style: GoogleFonts.montserrat(
                      fontSize: getProportionteScreenWidth(20),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionteScreenHeight(20)),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomListItem(
                      thumbnailURL: 'https://picsum.photos/350',
                      fullName: 'Jorge Robles',
                      email: 'gaitotraviso04',
                      index: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
