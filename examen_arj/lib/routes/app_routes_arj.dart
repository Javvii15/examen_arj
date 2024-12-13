import 'package:examen_arj/screens/screens_arj.dart';
import 'package:flutter/material.dart';

class AppRoutesArj {
  static const String initialRoute = 'home_arj';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    return {
      'home_arj': (BuildContext context) => const HomeScreen(),
      'signin_arj': (BuildContext context) => const SigninScreen(),
    };
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}