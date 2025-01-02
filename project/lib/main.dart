import 'package:flutter/material.dart';
import 'package:project/screen/Fistscreen.dart';
import 'package:project/screen/Homescreen.dart';
import 'package:project/screen/Loginscreen.dart';
import 'package:project/screen/SplashScreen.dart';
import 'package:project/screen/Verification.dart';
import 'package:project/screen/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen()
    );
  }
}
