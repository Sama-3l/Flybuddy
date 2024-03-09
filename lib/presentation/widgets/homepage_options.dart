// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flybuddy/business_logic/cubits/options_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/presentation/widgets/option.dart';

class Options extends StatelessWidget {
  Options({super.key, required this.theme});

  LightTheme theme;
  List<bool> selected = [
    true,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OptionsCubit, OptionsState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  for (int i = 0; i < selected.length; i++) {
                    selected[i] = false;
                  }
                  selected[0] = true;
                  BlocProvider.of<OptionsCubit>(context).onChangeOption();
                },
                child: Option(theme: theme, label: "Transport", selected: selected[0])),
            GestureDetector(
                onTap: () {
                  for (int i = 0; i < selected.length; i++) {
                    selected[i] = false;
                  }
                  selected[1] = true;
                  BlocProvider.of<OptionsCubit>(context).onChangeOption();
                },
                child: Option(theme: theme, label: "Terminal", selected: selected[1])),
            GestureDetector(
                onTap: () {
                  for (int i = 0; i < selected.length; i++) {
                    selected[i] = false;
                  }
                  selected[2] = true;
                  BlocProvider.of<OptionsCubit>(context).onChangeOption();
                },
                child: Option(theme: theme, label: "Forex", selected: selected[2])),
            GestureDetector(
                onTap: () {
                  for (int i = 0; i < selected.length; i++) {
                    selected[i] = false;
                  }
                  selected[3] = true;
                  BlocProvider.of<OptionsCubit>(context).onChangeOption();
                },
                child: Option(theme: theme, label: "Contact info", selected: selected[3])),
          ],
        ),
      );
    });
  }
}
