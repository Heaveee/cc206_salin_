import 'package:flutter/material.dart';
import 'package:cc206_salin_/features/signup.dart';
import 'package:cc206_salin_/features/home.dart';
import 'package:cc206_salin_/features/telgramloginscreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/fsfs.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: 375,
              height: 812,
              decoration: BoxDecoration(
                color: Color.fromARGB(0, 174, 163, 163),
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
                  SizedBox(height: 30),
                  Container(
                    width: 310,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10), // Added border radius
                      color: Colors.white,
                      border: Border.all(
                          width: 1.5, color: Color.fromARGB(255, 133, 32, 32)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 310,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10), // Added border radius
                      color: Colors.white,
                      border: Border.all(
                          width: 1.5, color: Color.fromARGB(255, 157, 23, 23)),
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
                      // login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 173, 10)),
                      fixedSize: MaterialStateProperty.all(
                        Size(290, 46.77),
                      ),
                    ),
                    child: Text("Log In", style: TextStyle(fontSize: 18)),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // forgot password
                    },
                    child: Text(
                      "forgot password?",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Added space
                  Text(
                    "or continue with",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // continue with Telegram
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelegramLoginScreen(),
                            ),
                          );
                        },
                        child: IconButton(
                          icon: Icon(Icons.telegram,
                              size: 40,
                              color: Colors.white), // Changed icon color
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TelegramLoginScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 10), // Increased space
                      IconButton(
                        icon: Icon(Icons.facebook,
                            size: 40,
                            color: Colors.white), // Changed icon color
                        onPressed: () {
                          // continue with Facebook
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account yet? ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Sign up
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpForm(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign up here",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
