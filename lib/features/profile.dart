import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true, // Set this to true to center the title
      ),
      body: Center(
        child: Text("Profile Screen Content"),
      ),
    );
  }
}
