import 'package:flutter/material.dart';

void main() {
  runApp(SalinApp());
}

class SalinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      ),
      home: SalinLoginForm(),
    );
  }
}

class SalinLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salin Login"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/salin_logo.png', // Replace with the actual path to your logo
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
                  // din makadto button if ma pindot
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text("Log In",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
