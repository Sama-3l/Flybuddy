// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class FlightCard extends StatelessWidget {
  FlightCard({super.key, required this.theme, required this.short1, required this.time1, required this.city1, required this.short2, required this.time2, required this.city2, required this.diff, required this.airlineIcon, required this.flightNumber, required this.day});

  LightTheme theme;
  String short1;
  String time1;
  String city1;
  String short2;
  String time2;
  String city2;
  String diff;
  String airlineIcon;
  String flightNumber;
  String day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
          BoxShadow(blurRadius: 8, spreadRadius: 0, offset: Offset.zero, color: theme.oppColor.withOpacity(0.07)),
        ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(day, style: ubermove(theme.oppColor, 14, weight: FontWeight.bold)),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Iconify(
                          airlineIcon,
                          size: 20,
                        ),
                      ),
                      Text(flightNumber, style: ubermove(theme.oppColor, 12))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 1,
                color: theme.accentColor5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(short1, style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
                          Container(width: 5),
                          Text(time1, style: ubermove(theme.correctColor, 20, weight: FontWeight.bold))
                        ],
                      ),
                      Text(city1, style: ubermove(theme.accentColor3, 12))
                    ],
                  ),
                  Text(diff, style: ubermove(theme.accentColor3, 12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(time2, style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
                          Container(width: 5),
                          Text(short2, style: ubermove(theme.oppColor, 20, weight: FontWeight.bold))
                        ],
                      ),
                      Text(city2, style: ubermove(theme.accentColor3, 12))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
