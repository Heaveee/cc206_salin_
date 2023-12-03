import 'package:flutter/material.dart';
import 'package:cc206_salin_/features/login.dart';

class Onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Salin Picture 3"),
            Text("Tagline 3"),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text("Get Started"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
