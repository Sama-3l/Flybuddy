// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class SelfParkingOption extends StatelessWidget {
  SelfParkingOption({
    super.key,
    required this.theme,
    required this.icon,
    required this.label,
    required this.secondaryLabel,
  });

  LightTheme theme;
  String icon;
  String label;
  String secondaryLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 20),
      child: Row(children: [
        Iconify(
          icon,
          size: 18,
          color: theme.oppColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 9),
          child: Text(label, style: ubermove(theme.accentColor4, 14)),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  secondaryLabel,
                  style: ubermove(theme.oppColor, 14),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Icon(
                      Icons.info_outline_rounded,
                      color: theme.accentColor3,
                      size: 11,
                    ))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
