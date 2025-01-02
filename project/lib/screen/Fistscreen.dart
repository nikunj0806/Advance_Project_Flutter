import 'package:flutter/material.dart';

class Fistscreen extends StatefulWidget {
  const Fistscreen({super.key});

  @override
  State<Fistscreen> createState() => _FistscreenState();
}

class _FistscreenState extends State<Fistscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/image/background.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 500, width: 2000, child: Text("hellow"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
