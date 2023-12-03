import 'package:cc206_salin_/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Salin Picture 2"),
            Text("Tagline 2"),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding3()),
                  );
                },
                child: Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
