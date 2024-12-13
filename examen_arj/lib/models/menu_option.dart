
import 'package:flutter/material.dart';

class MenuOption {
  final Widget screen;
  final IconData icon;
  final String name;
  final String route;

  const MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}