import 'package:dietlens/pages/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:dietlens/pages/welcome_screen.dart';

import 'package:dietlens/pages/LoginScreen.dart';
import 'package:dietlens/pages/SignupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IngreScan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green.shade600,
          primary: Colors.green.shade600,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),

        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const Homescreen(),
      },
    );
  }
}
