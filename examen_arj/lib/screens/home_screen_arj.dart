import 'package:flutter/material.dart';

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
            // Aquí se agrega el widget FlutterLogo
            const FlutterLogo(size: 100),
            
            // Botón para iniciar sesión
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'signin_screen_arj');
              },
              child: const Text('Sign in'),
            ),
            
            // Botón para registrarse
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
