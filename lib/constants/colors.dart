// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class LightTheme {
  final Color primaryColor = const Color(0xffffffff);
  final Color oppColor = const Color(0xff080808);
  final Color accentColor1 = const Color(0xffEEEEEE);
  final Color accentColor2 = const Color(0xffE4E4E4);
  final Color accentColor3 = const Color(0xff909090);
  final Color accentColor4 = const Color(0xff767676);
  final Color accentColor5 = const Color(0xffDCDCDC);
  final Color correctColor = const Color(0xff23A049);
  final Color yellow = const Color(0xffF2B33A);
  final Color blue = const Color(0xff286BF9);
}

class DarkTheme extends LightTheme {
  @override
  final Color primaryColor = const Color(0xff080808);
  @override
  final Color oppColor = const Color(0xffffffff);
  @override
  final Color accentColor1 = Color.fromARGB(255, 37, 37, 37);
  @override
  final Color accentColor2 = const Color(0xffE4E4E4);
  @override
  final Color accentColor3 = const Color(0xff909090);
  @override
  final Color accentColor4 = const Color(0xff767676);
  @override
  final Color accentColor5 = const Color(0xffDCDCDC);
  @override
  final Color correctColor = const Color(0xff23A049);
  @override
  final Color yellow = Color.fromARGB(255, 98, 68, 13);
  @override
  final Color blue = Color.fromARGB(255, 112, 141, 204);
}
