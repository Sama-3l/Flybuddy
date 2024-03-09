// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/functions/widget_generator.dart';

class ForeignExchange extends StatelessWidget {
  ForeignExchange({super.key, required this.theme});

  LightTheme theme;
  WidgetGenerator wd = WidgetGenerator();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: theme.accentColor2)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Foreign exchange", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
              ExpansionTile(
                initiallyExpanded: true,
                title: Text("Travelex", style: ubermove(theme.oppColor, 14)),
                tilePadding: EdgeInsets.zero,
                expandedAlignment: Alignment.centerLeft,
                shape: const RoundedRectangleBorder(side: BorderSide.none),
                children: [
                  Text(
                    "Terminal 3-\nAirside Dept Downtown, Concourse B, \nTerminal 3, beside Winston Smoking room",
                    softWrap: true,
                    style: ubermove(theme.accentColor3, 12),
                  )
                ],
              ),
              ExpansionTile(
                initiallyExpanded: false,
                title: Text("Al Ansari Exchange", style: ubermove(theme.oppColor, 14)),
                tilePadding: EdgeInsets.zero,
                expandedAlignment: Alignment.centerLeft,
                shape: const RoundedRectangleBorder(side: BorderSide.none),
                children: [
                  Text(
                    "Terminal 3-\nAirside Dept Downtown, Concourse B, \nTerminal 3, beside Winston Smoking room",
                    softWrap: true,
                    style: ubermove(theme.accentColor3, 12),
                  )
                ],
              ),
              ExpansionTile(
                initiallyExpanded: false,
                title: Text("Emirates NBD", style: ubermove(theme.oppColor, 14)),
                tilePadding: EdgeInsets.zero,
                expandedAlignment: Alignment.centerLeft,
                shape: const RoundedRectangleBorder(side: BorderSide.none),
                children: [
                  Text(
                    "Terminal 3-\nAirside Dept Downtown, Concourse B, \nTerminal 3, beside Winston Smoking room",
                    softWrap: true,
                    style: ubermove(theme.accentColor3, 12),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
