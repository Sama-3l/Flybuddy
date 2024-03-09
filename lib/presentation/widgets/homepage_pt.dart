// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/functions/widget_generator.dart';
import 'package:flybuddy/presentation/widgets/publictransport_options.dart';

class PublicTransport extends StatelessWidget {
  PublicTransport({super.key, required this.theme});

  LightTheme theme;
  WidgetGenerator wd = WidgetGenerator();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: theme.accentColor2)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("Public Transport", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
              ),
              PTOptions(theme: theme, icon: metro, label: "Metro", secondaryLabel: "6am - 10pm"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 1,
                  color: theme.accentColor1,
                ),
              ),
              PTOptions(theme: theme, icon: bus, label: "Bus", secondaryLabel: "available 24hrs"),
            ],
          ),
        ),
      ),
    );
  }
}
