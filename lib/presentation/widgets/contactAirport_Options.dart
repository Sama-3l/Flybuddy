import 'package:flutter/material.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class AirportContactOption extends StatelessWidget {
  const AirportContactOption({super.key, required this.theme, required this.label});

  final LightTheme theme;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: ubermove(theme.oppColor, 16)),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
                decoration: BoxDecoration(color: theme.accentColor1, borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                  child: Iconify(
                    call,
                    size: 18,
                    color: theme.oppColor,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
