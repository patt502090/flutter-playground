import 'package:flutter/material.dart';
import 'package:flutter_demo_0/src/pages/login_page/login_page.dart';

import 'pages/routes.dart';

class PattApp extends StatelessWidget {
  const PattApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PattApp',
      routes: AppRoute.all,
      home: LoginPage(),
    );
  }
}