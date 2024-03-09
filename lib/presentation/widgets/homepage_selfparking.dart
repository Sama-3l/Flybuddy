// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/business_logic/cubits/selfParkingCubit/self_parking_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/functions/widget_generator.dart';
import 'package:flybuddy/presentation/widgets/option.dart';
import 'package:flybuddy/presentation/widgets/selfparking_options.dart';

class SelfParking extends StatelessWidget {
  SelfParking({super.key, required this.theme});

  LightTheme theme;
  WidgetGenerator wd = WidgetGenerator();
  List<bool> selected = [
    true,
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
          child: BlocBuilder<SelfParkingCubit, SelfParkingState>(builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Self Parking", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 22),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        selected[0] = true;
                        selected[1] = false;
                        BlocProvider.of<SelfParkingCubit>(context).onChangeOption();
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
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () {
                          selected[0] = false;
                          selected[1] = true;
                          BlocProvider.of<SelfParkingCubit>(context).onChangeOption();
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
                    )
                  ]),
                ),
                SelfParkingOption(theme: theme, icon: twowheeler, label: "Two wheeler", secondaryLabel: "AED 50 / day"),
                SelfParkingOption(theme: theme, icon: fourwheeler, label: "Car Parking", secondaryLabel: "AED 100 / day"),
                SelfParkingOption(theme: theme, icon: electriccar, label: "Electric Car Parking", secondaryLabel: "AED 100 / day"),
              ],
            );
          }),
        ),
      ),
    );
  }
}
