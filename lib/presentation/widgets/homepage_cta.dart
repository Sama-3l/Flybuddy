import 'package:flutter/material.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/functions/const_functions.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class Cta extends StatelessWidget {
  const Cta({super.key, required this.theme});

  final LightTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('Getting Directions'),
                    )),
                style: ElevatedButton.styleFrom(backgroundColor: theme.oppColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Iconify(
                        direction,
                        size: 18,
                        color: theme.primaryColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Get direction",
                          style: ubermove(theme.primaryColor, 16, weight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Container(width: 13),
          Expanded(
            child: ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('Calling Airport'),
                    )),
                style: ElevatedButton.styleFrom(backgroundColor: theme.oppColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Iconify(
                        call,
                        size: 18,
                        color: theme.primaryColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Call airport",
                          style: ubermove(theme.primaryColor, 16, weight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
