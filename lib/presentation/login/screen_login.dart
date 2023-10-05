import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/presentation/main_page/main_screen.dart';

import 'package:e_shop/presentation/signup/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "E-shop",
          style: TextStyle(color: Colors.yellow, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.mail_outline),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            kheight20,
            TextFormField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            kheight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      try {
                        await _auth.signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ),
                        );
                        // Successful sign-in
                        print('Sign-in successful');
                      } catch (e) {
                        // Error during sign-in
                        print('Error: $e');
                      }
                    },
                    child: const Text("Sign in")),
                ElevatedButton(
                    onPressed: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenSignup(),
                      ));
                    },
                    child: const Text("Sign up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
