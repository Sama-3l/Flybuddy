// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/presentation/widgets/imageheader_tag.dart';

class HeroCard extends StatelessWidget {
  HeroCard({super.key, required this.theme});

  LightTheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 14, top: 14),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ImageHeaderTag(theme: theme, icon: weather, mainLabel: "19 C", secondaryLabel: "Cloudy"),
              ImageHeaderTag(theme: theme, icon: calender, mainLabel: "30 Jan", secondaryLabel: "Mon"),
              ImageHeaderTag(theme: theme, icon: time, mainLabel: "8:45 PM", secondaryLabel: "GMT+4"),
              ImageHeaderTag(theme: theme, icon: currency, mainLabel: "AED", secondaryLabel: "1\$ = 3.67 AD"),
            ]),
          )
        ],
      ),
    );
  }
}
