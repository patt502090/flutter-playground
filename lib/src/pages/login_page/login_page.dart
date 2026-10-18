import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController.text = "admin";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: "Username"),
              ),
              TextField(decoration: InputDecoration(labelText: "Password")),
              ElevatedButton(
                onPressed: _handleClickLogin,
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    print("PattLogin")
  }
}
