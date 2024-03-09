import 'package:flutter/material.dart';
import 'package:flybuddy/business_logic/cubits/darkModeCubit/dark_mode_cubit.dart';
import 'package:flybuddy/business_logic/cubits/options_cubit.dart';
import 'package:flybuddy/business_logic/cubits/selfParkingCubit/self_parking_cubit.dart';
import 'package:flybuddy/business_logic/cubits/terminalCubit/terminal_cubit.dart';
import 'package:flybuddy/constants/colors.dart';
import 'package:flybuddy/presentation/pages/homepage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  LightTheme theme = LightTheme();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OptionsCubit()),
        BlocProvider(create: (context) => SelfParkingCubit()),
        BlocProvider(create: (context) => TerminalCubit()),
        BlocProvider(create: (context) => DarkModeCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: BlocBuilder<DarkModeCubit, DarkModeState>(builder: (context, state) {
          if (state is DarkMode) {
            theme = DarkTheme();
          } else {
            theme = LightTheme();
          }
          return MyHomePage(theme: theme, state: state);
        }),
      ),
    );
  }
}
