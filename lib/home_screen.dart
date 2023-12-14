import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/inferno.jpg',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to The Inferno Project!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 80), // Adding padding between text and list view
          ],
        ),
        ListTile(
          title: Text(
            'Robot Status',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              // Add your logic here to toggle robot status
            },
            child: Text('ON'), // Replace with dynamic status text
          ),
        ),
        ListTile(
          title: Text(
            'Temperature Reading',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          trailing: Text('25°C', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        ),
        ListTile(
          title: Text(
            'Camera',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              // Add your logic here to toggle camera status
            },
            child: Text('ON'), // Replace with dynamic camera status text
          ),
        ),
        ListTile(
          title: Text(
            'Battery Status',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            '85%',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          title: Text(
            'Flame Detection',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              fetchFlameStatus(context);
            },
            child: Text('Check Flame'), // Button to check flame status
          ),
        ),
      ],
    );
  }
}

   void fetchFlameStatus(BuildContext context) async {
    final response =
        await http.get(Uri.parse('http://192.168.50.108:5000/fire-status'));
    if (response.statusCode == 200) {
      final data = response.body;
      final json = jsonDecode(data);
      final fireDetected = json['fire_detected'];

      if (fireDetected) {
        print('Flame detected!');
        // Handle UI or other actions accordingly
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Flame detected!'),
            duration: Duration(seconds: 3),
          ),
        );
      } else {
        print('No flame detected.');
        // Handle UI or other actions accordingly
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('No flame detected.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    } else {
      print('Failed to fetch flame status');
      // Handle errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to fetch flame status'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
