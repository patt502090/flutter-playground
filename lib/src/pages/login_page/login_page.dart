import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo_0/src/bloc/bloc/login_bloc.dart';
import 'package:flutter_demo_0/src/models/user.dart';

import '../routes.dart';

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
      appBar: AppBar(
        title: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Text('Login Page: ${state.count}');
          },
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32.0),
              height: 800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildTextFields(),
                  const SizedBox(height: 32),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return Text(
                        "Login Result: ${state.isAuthenticated ? "Authenticated" : "Not Authenticated"}",
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  ..._buildButtons(),

                  Row(
                    children: [
                      // ใช้ BlocBuilder เพื่อสร้าง widget ที่สามารถ rebuild ใหม่เมื่อ state ของ LoginBloc เปลี่ยนแปลง โดยใช้ state.count เพื่อแสดงค่าของ count ใน state ของ LoginBloc
                      BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) {
                          return Text(
                            "DebugXX: ${state.count}",
                            style: const TextStyle(color: Colors.red),
                          );
                        },
                      ),
                      IconButton(
                        onPressed: () =>
                            context.read<LoginBloc>().add(LoginEventAdd()),
                        icon: const Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () =>
                            context.read<LoginBloc>().add(LoginEventRemove()),
                        icon: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    // print('Login: with ${_usernameController.text}');
    // Navigator.pushNamed(context, AppRoute.home);
    final user = User(
      username: _usernameController.text,
      password: _passwordController.text,
    );
    context.read<LoginBloc>().add(LoginEventLogin(payload: user));
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
      OutlinedButton(onPressed: _handleClickReset, child: const Text('Reset')),
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
