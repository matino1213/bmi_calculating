import 'package:bmi_calculating/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'fira'),
      debugShowCheckedModeBanner: false,
      home: const homeScreen()
    );
  }
}
