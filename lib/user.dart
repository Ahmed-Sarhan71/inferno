import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? _email;
  String? _password;

  Future<void> signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _email!,
        password: _password!,
      );
      // If successful, user signed in
      User? user = userCredential.user;
      if (user != null) {
        print('User signed in: ${user.uid}');
        // Navigate to another screen or perform actions after successful login
      }
    } catch (e) {
      // Handle errors
      print('Error signing in: $e');
      // Show error message to the user or perform error handling
    }
  }

  Future<void> signUp() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _email!,
        password: _password!,
      );
      // If successful, user signed up
      User? user = userCredential.user;
      if (user != null) {
        print('User signed up: ${user.uid}');
        // Navigate to another screen or perform actions after successful registration
      }
    } catch (e) {
      // Handle errors
      print('Error signing up: $e');
      // Show error message to the user or perform error handling
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => _email = value,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) => _password = value,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    signUp();
                  },
                  child: Text('Sign Up'),
                ),
                ElevatedButton(
                  onPressed: () {
                    signIn();
                  },
                  child: Text('Sign In'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
