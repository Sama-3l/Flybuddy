import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';

class WidgetGenerator {
  Widget dollarText(int n, LightTheme theme) {
    List<TextSpan> texts = [];
    int i = 0;
    for (; i < n; i++) {
      texts.add(TextSpan(text: '\$', style: ubermove(theme.accentColor3, 11, letterSpacing: 2)));
    }
    for (; i < 5; i++) {
      texts.add(TextSpan(text: '\$', style: ubermove(theme.accentColor5, 11, letterSpacing: 2)));
    }
    return Padding(
      padding: EdgeInsets.only(top: 13, bottom: 10),
      child: RichText(
        text: TextSpan(children: texts),
      ),
    );
  }
}
