// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/functions/widget_generator.dart';
import 'package:flybuddy/presentation/widgets/taskservice_card.dart';

class TaxiService extends StatelessWidget {
  TaxiService({super.key, required this.theme});

  LightTheme theme;
  WidgetGenerator wd = WidgetGenerator();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: theme.accentColor2)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Taxi service", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10, right: 20),
              child: Row(children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: TaskServiceCard(theme: theme, icon: uber, n: 3, color: theme.oppColor),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TaskServiceCard(theme: theme, icon: careem, n: 4),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TaskServiceCard(theme: theme, icon: yango, n: 3),
                )),
              ]),
            ),
            TaskServiceCard(
              theme: theme,
              icon: blacklane,
              color: theme.oppColor,
              n: 5,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}
