import 'package:examen_arj/routes/app_routes_arj.dart';
import 'package:examen_arj/theme/app_theme_arj.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyAppArj());

class MyAppArj extends StatelessWidget {
  const MyAppArj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deportes App',
      initialRoute: AppRoutesArj.initialRoute,
      routes: AppRoutesArj.getAppRoutes(),
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRoutesArj.onGenerateRoute,
    );
  }
}