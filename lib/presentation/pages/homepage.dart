// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flybuddy/assets/svgs/svgcode.dart';
import 'package:flybuddy/business_logic/cubits/darkModeCubit/dark_mode_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/presentation/widgets/homepage_contactAirport.dart';
import 'package:flybuddy/presentation/widgets/homepage_cta.dart';
import 'package:flybuddy/presentation/widgets/homepage_foreignexchange.dart';
import 'package:flybuddy/presentation/widgets/homepage_header.dart';
import 'package:flybuddy/presentation/widgets/homepage_imageheader.dart';
import 'package:flybuddy/presentation/widgets/homepage_options.dart';
import 'package:flybuddy/presentation/widgets/homepage_pt.dart';
import 'package:flybuddy/presentation/widgets/homepage_selfparking.dart';
import 'package:flybuddy/presentation/widgets/homepage_taxiservice.dart';
import 'package:flybuddy/presentation/widgets/homepage_terminalmap.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.theme, required this.state});

  LightTheme theme;
  DarkModeState state;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.theme.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(top: 27, left: 20, right: 20),
        child: ListView(children: <Widget>[
          Header(theme: widget.theme),
          ImageHeader(theme: widget.theme),
          Options(theme: widget.theme),
          TaxiService(theme: widget.theme),
          PublicTransport(theme: widget.theme),
          SelfParking(theme: widget.theme),
          TerminalMap(theme: widget.theme),
          ForeignExchange(theme: widget.theme),
          ContactAirport(theme: widget.theme),
          Cta(theme: widget.theme)
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: widget.theme.oppColor,
        onPressed: () {
          if (widget.state is DarkMode) {
            BlocProvider.of<DarkModeCubit>(context).onLightMode();
          } else {
            BlocProvider.of<DarkModeCubit>(context).onDarkMode();
          }
        },
        child: Iconify(themeIcon, size: 16, color: widget.theme.primaryColor),
      ),
    );
  }
}
