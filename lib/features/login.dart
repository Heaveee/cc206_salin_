import 'package:cc206_salin_/features/signup.dart';
import 'package:flutter/material.dart';
import 'package:cc206_salin_/features/home.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salin Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/salin_logo.png',
              width: 100,
              height: 100,
            ),
            Text(
              "Log In to Salin",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: "Username"),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text("Log In", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Navigate to sign-up screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpForm()),
                );
              },
              child: Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
