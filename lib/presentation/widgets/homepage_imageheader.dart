// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/presentation/widgets/imageheader_herocard.dart';

class ImageHeader extends StatelessWidget {
  ImageHeader({super.key, required this.theme});

  LightTheme theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 285,
        width: double.infinity,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("lib/assets/images/dubai.jpeg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            const Expanded(
                child: SizedBox(
              width: double.infinity,
            )),
            Expanded(child: HeroCard(theme: theme)),
          ],
        ),
      ),
    );
  }
}
