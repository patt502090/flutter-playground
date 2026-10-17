import 'package:flutter/material.dart';

import 'pages/login_page/login_page.dart';

class PattApp extends StatelessWidget {
  const PattApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "PattApp", home: LoginPage());
  }
}