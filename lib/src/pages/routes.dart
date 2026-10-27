import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'login_page/login_page.dart';
import 'register/register_page.dart';

/// Centralized names for the application's named routes.
class AppRoute {
	static const login = 'login';
	static const home = 'home';
	static const register = 'register';

	static get all => <String, WidgetBuilder>{
    login:(context) => const LoginPage(),
    home:(context) => const HomePage(),
    register:(context) => const RegisterPage(),
  };
}
