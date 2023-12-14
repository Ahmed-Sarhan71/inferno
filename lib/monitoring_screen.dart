import 'package:flutter/material.dart';

class MonitoringScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0), // Add space from the top
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Camera Feed',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Live camera feed will appear here',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}