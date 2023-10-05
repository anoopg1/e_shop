import 'package:e_shop/core/constants/size_constants.dart';
import 'package:e_shop/presentation/login/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    bool signupStatus = false;
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmpasswordController =
        TextEditingController();
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
            TextFormField(
              obscureText: true,
              controller: _confirmpasswordController,
              decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            kheight20,
            ElevatedButton(
                onPressed: () async {
                  if (_passwordController.text ==
                      _confirmpasswordController.text) {
                    try {
                      await _auth.createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );

                      Future.delayed(Duration(seconds: 2));
                      Navigator.pop(context, ScreenLogin());
                      // Successful signup
                      print('Signup successful');
                    } catch (e) {
                      // Error during signup
                      print('Error: $e');
                    }
                  } else {
                    Visibility(
                        visible: signupStatus == true,
                        child: const Text("Password doesnot match"));
                    print("Password doesnot match");
                  }
                },
                child: const Text("Submit")),
            Visibility(
                visible: signupStatus == true,
                child: const Text("Signup Successfull")),
          ],
        ),
      ),
    );
  }
}
