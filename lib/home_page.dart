import 'package:flutter/material.dart';
import 'monitoring_screen.dart';
import 'user.dart';
import 'home_screen.dart'; 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    MonitoringScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inferno Project',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold, // Make text bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo, // Set app bar background to orange
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor:
            Colors.orange, // Set navigation bar background to orange
        selectedItemColor: Colors.white, // Set selected item color
        unselectedItemColor: Colors.black, // Set unselected item color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor),
            label: 'Monitoring',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
      ),
    );
  }
}







