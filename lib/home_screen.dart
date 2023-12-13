import 'package:flutter/material.dart';

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
      ],
    );
  }
}
