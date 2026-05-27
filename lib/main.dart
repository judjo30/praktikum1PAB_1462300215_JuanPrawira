import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const HealthHubApp());
}

class HealthHubApp extends StatelessWidget {
  const HealthHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFF7FF),
      ),
      home: const HomePage(),
    );
  }
}