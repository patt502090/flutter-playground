import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        width: double.infinity,
        color: Colors.amber.withValues(alpha: 0.9),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text("patt.com"), color: Colors.red,),
            Text("BodyDesc"),
            Text("BodyDesc"),
          ],
        ),
      ),
    );
  }
}
