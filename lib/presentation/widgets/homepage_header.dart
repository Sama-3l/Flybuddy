// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flybuddy/business_logic/cubits/darkModeCubit/dark_mode_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/presentation/pages/myflights.dart';

class Header extends StatefulWidget {
  Header({super.key, required this.theme, required this.state});

  LightTheme theme;
  DarkModeState state;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Text(
            'Dubai Airport - DXB',
            style: ubermove(
              widget.theme.oppColor,
              20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyFlights(
                          theme: widget.theme,
                        )));
              },
              child: Text(
                'My Flights',
                style: ubermove(
                  widget.theme.oppColor,
                  12,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ))
        ],
      ),
      Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          'Dubai',
          style: ubermove(
            widget.theme.accentColor3,
            12,
            weight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: Container(height: 3, width: 3, decoration: BoxDecoration(color: widget.theme.accentColor3, borderRadius: BorderRadius.circular(3))),
        ),
        Text(
          'United Arab Emirates',
          style: ubermove(
            widget.theme.accentColor3,
            12,
            weight: FontWeight.w500,
          ),
        )
      ])
    ]);
  }
}
