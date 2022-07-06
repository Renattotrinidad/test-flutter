import 'package:flutter/material.dart';
import 'package:prueba_ima/pages/home/home.dart';
import 'package:prueba_ima/pages/login/login.dart';
import 'package:prueba_ima/pages/register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mortgages',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF6C64FF)
      ),
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginPage(),
        'register': (_) => const RegisterPage(),
        'home': (_) => const HomePage(),
      },
    );
  }
}
