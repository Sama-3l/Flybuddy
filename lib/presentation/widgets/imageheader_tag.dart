// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../../functions/const_functions.dart';

class ImageHeaderTag extends StatelessWidget {
  ImageHeaderTag({super.key, required this.theme, required this.icon, required this.mainLabel, required this.secondaryLabel});

  String icon;
  String mainLabel;
  String secondaryLabel;
  LightTheme theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        Iconify(icon, size: 16),
        Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Text(mainLabel, style: ubermove(theme.oppColor, 16, weight: FontWeight.w600)),
        ),
        Text(secondaryLabel, style: ubermove(theme.accentColor2, 11, weight: FontWeight.w500))
      ]),
    );
  }
}
