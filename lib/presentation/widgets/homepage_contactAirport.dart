// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flybuddy/business_logic/cubits/terminalCubit/terminal_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:flybuddy/functions/widget_generator.dart';
import 'package:flybuddy/presentation/widgets/contactAirport_Options.dart';

class ContactAirport extends StatelessWidget {
  ContactAirport({super.key, required this.theme});

  final LightTheme theme;
  final WidgetGenerator wd = WidgetGenerator();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: theme.accentColor2)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20, right: 20),
          child: BlocBuilder<TerminalCubit, TerminalState>(builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact airport", style: ubermove(theme.oppColor, 20, weight: FontWeight.bold)),
                AirportContactOption(
                    theme: theme,
                    label: "Police",
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Calling Airport Police'),
                        ))),
                Padding(padding: const EdgeInsets.symmetric(vertical: 13), child: Container(color: theme.accentColor1, height: 1)),
                AirportContactOption(
                    theme: theme,
                    label: "Lost and found",
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Calling Lost and found'),
                        ))),
                Padding(padding: const EdgeInsets.symmetric(vertical: 13), child: Container(color: theme.accentColor1, height: 1)),
                AirportContactOption(
                    theme: theme,
                    label: "Transport",
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Calling Transport services'),
                        ))),
                Padding(padding: const EdgeInsets.symmetric(vertical: 13), child: Container(color: theme.accentColor1, height: 1)),
                AirportContactOption(
                    theme: theme,
                    label: "Head office",
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text('Calling Head office'),
                        ))),
              ],
            );
          }),
        ),
      ),
    );
  }
}
