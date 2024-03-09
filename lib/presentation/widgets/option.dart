// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';

class Option extends StatelessWidget {
  Option({super.key, required this.theme, required this.label, required this.selected, this.borderRadius = 18, this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 11), this.fontsize = 12, this.weight = FontWeight.w500});

  LightTheme theme;
  String label;
  bool selected;
  double borderRadius;
  EdgeInsets padding;
  double fontsize;
  FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: !selected ? theme.accentColor1 : theme.oppColor, borderRadius: BorderRadius.circular(borderRadius)),
      child: Padding(
        padding: padding,
        child: Text(label, style: ubermove(!selected ? theme.oppColor : theme.primaryColor, fontsize, weight: weight)),
      ),
    );
  }
}
