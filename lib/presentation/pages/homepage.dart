// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/presentation/widgets/homepage_header.dart';
import 'package:flybuddy/presentation/widgets/homepage_imageheader.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.theme});

  LightTheme theme;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 27, left: 20, right: 20),
        child: ListView(children: <Widget>[
          Header(theme: widget.theme),
          ImageHeader(theme: widget.theme)
        ]),
      ),
    );
  }
}
