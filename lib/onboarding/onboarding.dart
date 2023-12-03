import 'package:cc206_salin_/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Salin Picture 1"),
            Text("Tagline 1"),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboarding2()),
                    );
                  },
                  child: Text("Next"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
