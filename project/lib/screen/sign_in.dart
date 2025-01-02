import 'package:flutter/material.dart';
import 'package:project/screen/Homescreen.dart';
import 'package:project/screen/Loginscreen.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
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
                "Sing UP",
                style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Username",
                    label: const Text("Username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    label: const Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    label: const Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Re Enter Password",
                    label: const Text("Confirm Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Column(
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
                        icon: const Text(
                          "Sing UP",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))),
                    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You have a account "),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Loginscreen()));
                    },
                    icon: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ))
              ],
            )
              ],
            )
          ],
        ),
      ),
    );
  }
}
