import 'package:cc206_salin_/features/signup.dart';
import 'package:flutter/material.dart';
import 'package:cc206_salin_/features/home.dart';
import 'package:cc206_salin_/features/telgramloginscreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 375,
          height: 812,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/salin_logo.png',
                width: 169,
                height: 186,
              ),
              SizedBox(height: 20),
              Container(
                width: 310,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 310,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //  login
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
              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    "Don’t have an account yet? ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // pakadto to signup screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpForm()),
                      );
                    },
                    child: Text(
                      "Sign up here",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle telegram login
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelegramLoginScreen(),
                        ),
                      );
                    },
                    child: IconButton(
                      icon: Icon(Icons.telegram, size: 30, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelegramLoginScreen(),
                            ));
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.facebook, size: 30, color: Colors.blue),
                    onPressed: () {
                      // Handle Facebook login
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
                  // Handle forgot password
                },
                child: Text(
                  "forgot password?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
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
