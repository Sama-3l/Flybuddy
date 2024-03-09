// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/presentation/widgets/flight_options.dart';
import 'package:flybuddy/presentation/widgets/myflights_boardingCard.dart';
import 'package:flybuddy/presentation/widgets/myflights_card.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class MyFlights extends StatefulWidget {
  MyFlights({super.key, required this.theme});

  LightTheme theme;

  @override
  State<MyFlights> createState() => _MyFlightsState();
}

class _MyFlightsState extends State<MyFlights> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: widget.theme.primaryColor,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: widget.theme.accentColor5),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: widget.theme.primaryColor, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                                const CircleAvatar(radius: 20),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Flights",
                                      style: ubermove(widget.theme.accentColor3, 12),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "04",
                                      style: ubermove(widget.theme.oppColor, 16),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Countries",
                                      style: ubermove(widget.theme.accentColor3, 12),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "06",
                                      style: ubermove(widget.theme.oppColor, 16),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Distance",
                                      style: ubermove(widget.theme.accentColor3, 12),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      "4,237 km",
                                      style: ubermove(widget.theme.oppColor, 16),
                                    )
                                  ],
                                )
                              ]),
                            ),
                          ),
                          Container(height: 150),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 30, right: 15),
                    child: Row(children: [
                      Text("My Flights", style: ubermove(widget.theme.oppColor, 26, weight: FontWeight.bold)),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(color: widget.theme.accentColor1, borderRadius: BorderRadius.circular(20)),
                            child: Icon(Icons.keyboard_arrow_down, color: widget.theme.oppColor, size: 20),
                          )),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: () {}, icon: Iconify(search, color: widget.theme.oppColor, size: 20)),
                          IconButton(onPressed: () {}, icon: Iconify(add, color: widget.theme.oppColor, size: 20)),
                        ],
                      ))
                    ]),
                  ),
                  FlightCard(
                    theme: widget.theme,
                    short1: "DEL",
                    time1: "08:15",
                    city1: "New Delhi",
                    short2: "BOM",
                    time2: "10:15",
                    city2: "Mumbai",
                    diff: "2h 5m",
                    day: "Mon, 20 Dec 24",
                    flightNumber: "6E 725",
                    airlineIcon: indigo,
                  ),
                  BoardingCard(theme: widget.theme, time: "00:30", status: "On time", terminal: "T20"),
                  FlightOptions(theme: widget.theme),
                  FlightCard(
                    theme: widget.theme,
                    short1: "BOM",
                    time1: "08:15",
                    city1: "Mumbai",
                    short2: "DEL",
                    time2: "10:15",
                    city2: "New Delhi",
                    diff: "2h 5m",
                    day: "Mon, 24 Dec 24",
                    flightNumber: "6E 725",
                    airlineIcon: indigo,
                  ),
                  BoardingCard(theme: widget.theme, time: "83:23:30", status: "On time", terminal: "T20"),
                  FlightOptions(theme: widget.theme),
                ],
              ),
            )));
  }
}
