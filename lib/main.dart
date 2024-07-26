import 'package:flutter/material.dart';
import 'package:laza_app_test/Pages/Splash/splash_screen_page.dart';

void main() {
  runApp(const TestLazaApp());
}

class TestLazaApp extends StatelessWidget {
  const TestLazaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreenPage(),
      title: 'Laza App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
