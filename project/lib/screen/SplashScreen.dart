import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/screen/Homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Homescreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("asset/image/ss.jpg"),
      ),
    );
  }
}
