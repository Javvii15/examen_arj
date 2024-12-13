import 'package:flutter/material.dart';
import 'package:examen_arj/routes/app_routes_arj.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'signin_screen');
              },
              child: const Text('Sign in'),
            ),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
