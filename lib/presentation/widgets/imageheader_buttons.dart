// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class HeaderButtons extends StatelessWidget {
  HeaderButtons({super.key, required this.theme, required this.icon, required this.label});

  LightTheme theme;
  String icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Iconify(icon, size: 16, color: theme.blue),
          ),
          Text(
            label,
            style: ubermove(theme.oppColor, 14),
          ),
        ]));
  }
}
