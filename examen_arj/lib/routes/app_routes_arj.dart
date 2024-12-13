import 'package:examen_arj/models/menu_option.dart';
import 'package:examen_arj/screens/home_screen_arj.dart';
import 'package:examen_arj/screens/signin_screen_arj.dart';
import 'package:flutter/material.dart';


class AppRoutesArj {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    const MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Home Screen',
      screen: HomeScreen(),
    ),
    MenuOption(
      route: 'signin_screen',
      icon: Icons.login,
      name: 'Sign In Screen',
      screen: SigninScreen(),
    ),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(), 
    );
  }
}
