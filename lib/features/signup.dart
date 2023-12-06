import 'package:flutter/material.dart';
import 'package:cc206_salin_/features/login.dart';

void main() {
  runApp(SignUpApp());
}

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      ),
      home: SignUpForm(),
    );
  }
}

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/salin_logo.png',
                width: 100,
                height: 100,
              ),
              Text(
                "Create a Salin Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 310,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromARGB(
                        255, 170, 33, 33), // Highlight color when focused
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 310,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromARGB(
                        255, 148, 23, 23), // Highlight color when focused
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: 310,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromARGB(
                        255, 178, 34, 34), // Highlight color when focused
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              SizedBox(height: 20), // Move this space to adjust the layout
              ElevatedButton(
                onPressed: () {
                  // Handle sign-up
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text("Sign Up", style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.telegram, size: 30, color: Colors.blue),
                    onPressed: () {
                      // Handle Telegram sign-up
                    },
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.facebook, size: 30, color: Colors.blue),
                    onPressed: () {
                      // Handle Facebook sign-up
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "or continue with",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  "Already have an account? Sign in here.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
