import 'package:examen_arj/screens/list_view_arj.dart';
import 'package:flutter/material.dart';
import 'package:examen_arj/widgets/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: SigninScreen(),
    routes: {
      'home_screen': (context) => HomeScreen(),
      'listview_screen': (context) => ListViewScreen(),
    },
  ));
}

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _formValues = {}; 
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 100),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: _usernameController,
                      hintText: 'Introduce tu usuario',
                      labelText: 'Usuario',
                      obscureText: false,
                      formProperty: 'username',
                      formValues: _formValues,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      controller: _passwordController,
                      hintText: 'Introduce tu contraseña',
                      labelText: 'Contraseña',
                      obscureText: true,
                      formProperty: 'password',
                      formValues: _formValues,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          print('Usuario: ${_formValues['username']}');
                          print('Contraseña: ${_formValues['password']}');
                          Navigator.pushNamed(context, 'listview_screen');
                        }
                      },
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'home_screen');
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
