import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text("Salin"),
      ),
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
              TextField(
                decoration: InputDecoration(labelText: "Username"),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // if din makadto ang button
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text("Sign Up",
                    style:
                        TextStyle(color: Color.fromARGB(255, 252, 252, 252))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
