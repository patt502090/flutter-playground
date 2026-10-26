import 'package:flutter/material.dart';

import 'pages/routes.dart';

class PattApp extends StatelessWidget {
  const PattApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PattApp',
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRouteGenerator.generate,
    );
  }
}