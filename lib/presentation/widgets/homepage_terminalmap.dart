// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flybuddy/business_logic/cubits/terminalCubit/terminal_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/functions/widget_generator.dart';
import 'package:flybuddy/presentation/widgets/option.dart';

class TerminalMap extends StatelessWidget {
  TerminalMap({super.key, required this.theme});

  LightTheme theme;
  WidgetGenerator wd = WidgetGenerator();
  List<bool> selected = [
    true,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: theme.accentColor2)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
          child: BlocBuilder<TerminalCubit, TerminalState>(builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Terminal Map", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 22),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        selected[0] = true;
                        selected[1] = false;
                        selected[2] = false;
                        BlocProvider.of<TerminalCubit>(context).onChangeOption();
                      },
                      child: Option(
                        theme: theme,
                        label: "T1",
                        selected: selected[0],
                        borderRadius: 8,
                        fontsize: 16,
                        weight: FontWeight.bold,
                        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          selected[0] = false;
                          selected[1] = true;
                          selected[2] = false;
                          BlocProvider.of<TerminalCubit>(context).onChangeOption();
                        },
                        child: Option(
                          theme: theme,
                          label: "T2",
                          selected: selected[1],
                          borderRadius: 8,
                          fontsize: 16,
                          weight: FontWeight.bold,
                          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        selected[0] = false;
                        selected[1] = false;
                        selected[2] = true;
                        BlocProvider.of<TerminalCubit>(context).onChangeOption();
                      },
                      child: Option(
                        theme: theme,
                        label: "T3",
                        selected: selected[2],
                        borderRadius: 8,
                        fontsize: 16,
                        weight: FontWeight.bold,
                        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                      ),
                    ),
                  ]),
                ),
                // STACK USAGE, CENTERING, ALIGNMENT, WORKING WITH IMAGES
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      width: double.infinity,
                      "lib/assets/images/map.png",
                      fit: BoxFit.fitWidth,
                    ),
                    Center(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Text("View", style: ubermove(theme.primaryColor, 14)),
                      style: ElevatedButton.styleFrom(backgroundColor: theme.oppColor),
                    ))
                  ]),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
