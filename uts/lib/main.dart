import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Simple App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LandingPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}

