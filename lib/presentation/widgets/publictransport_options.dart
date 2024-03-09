// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class PTOptions extends StatelessWidget {
  PTOptions({super.key, required this.theme, required this.icon, required this.label, required this.secondaryLabel});

  LightTheme theme;
  String icon;
  String label;
  String secondaryLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 20),
        child: Row(children: [
          Iconify(
            icon,
            size: 18,
            color: theme.oppColor,
          ),
          Padding(
            padding: EdgeInsets.only(left: 17),
            child: Text(label, style: ubermove(theme.oppColor, 16, weight: FontWeight.bold)),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    secondaryLabel,
                    style: ubermove(theme.accentColor3, 11),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Iconify(arrowRight, size: 12, color: theme.oppColor),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
