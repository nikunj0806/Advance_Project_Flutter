import 'package:flutter/material.dart';
import 'package:project/screen/Forgot_Password.dart';
import 'package:project/screen/Homescreen.dart';
import 'package:project/screen/sign_in.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("asset/image/bgblue.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    label: const Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          
                        ))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    label: const Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(35)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homescreen()));
                        },
                        icon: const Text("Login"))),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have a account ",
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const sign_in()));
                    },
                    icon: const Text(
                      "Sing UP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Reseat Your Password ? "),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Forgot_Password()));
                    },
                    icon: const Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
