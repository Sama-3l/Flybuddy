// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/business_logic/cubits/darkModeCubit/dark_mode_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class MyFlights extends StatelessWidget {
  MyFlights({super.key, required this.theme, required this.state});

  LightTheme theme;
  DarkModeState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: theme.primaryColor,
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: theme.oppColor,
            onPressed: () {
              if (state is DarkMode) {
                theme = LightTheme();
                BlocProvider.of<DarkModeCubit>(context).onLightMode();
              } else {
                theme = DarkTheme();
                BlocProvider.of<DarkModeCubit>(context).onDarkMode();
              }
            },
            child: Iconify(themeIcon, size: 16, color: theme.primaryColor),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: theme.accentColor5),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: theme.primaryColor, borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                              CircleAvatar(radius: 20),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Flights",
                                    style: ubermove(theme.accentColor3, 12),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "04",
                                    style: ubermove(theme.oppColor, 16),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Countries",
                                    style: ubermove(theme.accentColor3, 12),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "06",
                                    style: ubermove(theme.oppColor, 16),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Distance",
                                    style: ubermove(theme.accentColor3, 12),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "4,237 km",
                                    style: ubermove(theme.oppColor, 16),
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
                  padding: EdgeInsets.only(left: 20, top: 30, right: 15),
                  child: Row(children: [
                    Text("My Flights", style: ubermove(theme.oppColor, 26, weight: FontWeight.bold)),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(color: theme.accentColor1, borderRadius: BorderRadius.circular(20)),
                          child: Icon(Icons.keyboard_arrow_down, size: 20),
                        )),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {}, icon: Iconify(search, size: 20)),
                        IconButton(onPressed: () {}, icon: Iconify(add, size: 20)),
                      ],
                    ))
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
                        BoxShadow(blurRadius: 8, spreadRadius: 0, offset: Offset.zero, color: theme.oppColor.withOpacity(0.07)),
                      ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mon, 20 Dec 24", style: ubermove(theme.oppColor, 14, weight: FontWeight.bold)),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Iconify(
                                        indigo,
                                        size: 20,
                                      ),
                                    ),
                                    Text("6E 725", style: ubermove(theme.oppColor, 12))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 1,
                              color: theme.accentColor5,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("DEL", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
                                        Container(width: 5),
                                        Text("08:15", style: ubermove(theme.correctColor, 20, weight: FontWeight.bold))
                                      ],
                                    ),
                                    Text("New Delhi", style: ubermove(theme.accentColor3, 12))
                                  ],
                                ),
                                Text("2h 5m", style: ubermove(theme.accentColor3, 12)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text("10:15", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
                                        Container(width: 5),
                                        Text("BOM", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold))
                                      ],
                                    ),
                                    Text("Mumbai", style: ubermove(theme.accentColor3, 12))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: theme.oppColor),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                        Text("Boarding closes in 00:30", style: ubermove(theme.primaryColor, 14, weight: FontWeight.bold)),
                                        Container(height: 6),
                                        Text("On time", style: ubermove(theme.accentColor3, 12))
                                      ]),
                                      Container(
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: theme.yellow),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text("T20", style: ubermove(theme.oppColor, 14, weight: FontWeight.bold)),
                                          )),
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      )),
                )
              ],
            ),
          )),
    );
  }
}
