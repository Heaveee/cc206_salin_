import 'package:flutter/material.dart';
import 'onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salin Login',
      debugShowCheckedModeBanner: false,
      home: Onboarding1(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red),
      ),
    );
  }
}
