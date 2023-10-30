import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'constants/global_variables.dart';

import 'features/auth/screens/LoginScreen.dart';
import 'features/auth/screens/RegisterScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  AppRoute _appRoute = AppRoute();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: GlobalVariable.highlighted_green_color as MaterialColor,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      onGenerateRoute: _appRoute.onGenerateRoute,
    );
  }
}
