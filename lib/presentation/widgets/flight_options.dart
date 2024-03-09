import 'package:flutter/cupertino.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class FlightOptions extends StatelessWidget {
  const FlightOptions({super.key, required this.theme});

  final LightTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(children: [
        Container(
            decoration: BoxDecoration(color: theme.accentColor1, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Row(
                children: [
                  Iconify(
                    ticket,
                    size: 14,
                    color: theme.oppColor,
                  ),
                  Container(width: 5),
                  Text("Boarding Pass", style: ubermove(theme.oppColor, 14)),
                ],
              ),
            )),
        Container(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(color: theme.accentColor1, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Row(
                children: [
                  const Iconify(
                    whatsapp,
                    size: 14,
                  ),
                  Container(width: 5),
                  Text("Share trip", style: ubermove(theme.oppColor, 14)),
                ],
              ),
            )),
        Expanded(
            child: Align(
          alignment: Alignment.centerRight,
          child: Container(
              decoration: BoxDecoration(color: theme.accentColor1, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                child: Iconify(
                  menu,
                  size: 14,
                  color: theme.oppColor,
                ),
              )),
        ))
      ]),
    );
  }
}
