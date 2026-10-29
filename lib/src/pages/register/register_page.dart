import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo_0/src/bloc/bloc/login_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Text("Register Page: ${state.count}");
          },
        ),
      ),
    );
  }
}
