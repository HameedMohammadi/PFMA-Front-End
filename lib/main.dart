import 'package:flutter/material.dart';
import 'package:fitness_application/view/login/splash_screen.dart'; // Correct path for splash_screen.dart
import 'package:fitness_application/view/login/login_screen.dart'; // Correct path for login_screen.dart
import 'package:fitness_application/view/home/home_screen.dart'; // Import the HomeScreen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Set HomeScreen as the initial screen
    );
  }
}
