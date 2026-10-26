import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = 'admin';
    _passwordController.text = '1234';
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildTextFields(),
                  const SizedBox(height: 32),
                  ..._buildButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    print(
      'Login: with ${_usernameController.text}',
    );
    Navigator.pushReplacementNamed(context, '/');
  }

  void _handleClickReset() {
    _usernameController.clear();
    _passwordController.clear();
  }

  List<ButtonStyleButton> _buildButtons() {
    return [
      ElevatedButton(
        onPressed: _handleClickLogin,
        child: const Text('Sign in'),
      ),
      OutlinedButton(
        onPressed: _handleClickReset,
        child: const Text('Reset'),
      ),
    ];
  }

  List<TextField> _buildTextFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: const InputDecoration(labelText: 'Username'),
      ),
      TextField(
        controller: _passwordController,
        obscureText: true,
        decoration: const InputDecoration(labelText: 'Password'),
      ),
    ];
  }
}
