import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo_0/src/bloc/bloc/login_bloc.dart';
import 'package:flutter_demo_0/src/pages/login_page/login_page.dart';

import 'pages/routes.dart';

class PattApp extends StatelessWidget {
  const PattApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    final loginBloc = BlocProvider(create: (context) => LoginBloc() );   // ใช้ BlocProvider เพื่อเข้าถึง instance ของ LoginBloc ที่ถูกสร้างขึ้นใน widget tree และเก็บไว้ในตัวแปร loginBloc เพื่อใช้ในการจัดการ state ของ login

    return MultiBlocProvider(
      providers: [loginBloc],
      child: MaterialApp(
      title: 'PattApp',
      routes: AppRoute.all,
      home: LoginPage(),
    )
    );
  }
}