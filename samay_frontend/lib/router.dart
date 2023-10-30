import 'package:flutter/material.dart';
import 'features/auth/screens/RegisterScreen.dart';
import 'features/home/screens/HomePage.dart';
import 'features/auth/screens/LoginScreen.dart';

class AppRoute {
  final login_page = LoginScreen();
  final register_page = RegisterScreen();
  final home = HomeScreen();

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => home);

      case '/login':
        return MaterialPageRoute(builder: (context) => login_page);
      case '/register':
        return MaterialPageRoute(builder: (context) => register_page);
      default:
        return null;
    }
  }
}
