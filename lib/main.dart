import 'package:flutter/material.dart';

import 'features/login.dart';
import 'features/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Salin Login',
      debugShowCheckedModeBanner: false,
      home: Login() ,
    )
  }
}

