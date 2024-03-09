// ignore_for_file: must_be_immutable, prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/functions/widget_generator.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class TaskServiceCard extends StatelessWidget {
  TaskServiceCard({super.key, required this.theme, required this.icon, required this.n, this.size = 15, this.color});

  LightTheme theme;
  String icon;
  Color? color;
  int n;
  double size;
  WidgetGenerator wd = WidgetGenerator();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: theme.oppColor.withOpacity(0.07))),
      child: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: Column(children: [
          n == 5
              ? Container(
                  decoration: BoxDecoration(color: theme.oppColor, borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(4), bottomRight: Radius.circular(4))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    child: Text("Luxury", style: ubermove(theme.yellow, 10)),
                  ))
              : Container(),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Iconify(
              icon,
              size: size,
              color: color,
            ),
          ),
          wd.dollarText(n, theme)
        ]),
      ),
    );
  }
}
