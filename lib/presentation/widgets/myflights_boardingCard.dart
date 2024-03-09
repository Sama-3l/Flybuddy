// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';

class BoardingCard extends StatelessWidget {
  BoardingCard({super.key, required this.theme, required this.time, required this.status, required this.terminal});

  LightTheme theme;
  String time;
  String status;
  String terminal;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: theme.oppColor),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Boarding closes in $time", style: ubermove(theme.primaryColor, 14, weight: FontWeight.bold)),
                  Container(height: 6),
                  Text(status, style: ubermove(theme.accentColor3, 12))
                ]),
                Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: theme.yellow),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(terminal, style: ubermove(theme.oppColor, 14, weight: FontWeight.bold)),
                    )),
              ],
            ),
          ),
        ));
  }
}
