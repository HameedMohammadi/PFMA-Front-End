import 'package:fitness_application/view/logScreen/log_screen.dart';
import 'package:fitness_application/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_application/view/login/splash_screen.dart';
import 'package:fitness_application/view/login/login_screen.dart';
import 'package:fitness_application/view/home/home_screen.dart';
import 'package:fitness_application/view/excercises/excercises.dart';
import 'package:fitness_application/view/plans/plans.dart';

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
      home: MainScreen(), // Using MainScreen as the initial home property
    );
  }
}

// MainScreen contains the BottomNavigationBar and logic for navigation
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(), // Your Home screen
    ExercisesScreen(), // Your Exercises screen
    PlansScreen(), // Your Plans screen
    LogScreen(), // Placeholder for Log screen
    ProfileScreen(), // Placeholder for Profile screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white, // Set the background color
        selectedItemColor: Colors.blue, // Color for the selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'Exercises'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Plans'),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Log'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
