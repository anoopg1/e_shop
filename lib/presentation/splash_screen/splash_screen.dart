import 'package:e_shop/main.dart';
import 'package:e_shop/presentation/login/screen_login.dart';

import 'package:e_shop/presentation/main_page/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/online-shopping-banner-mobile-app-templates-concept-flat-design_1150-34862.jpg?w=740&t=st=1697100710~exp=1697101310~hmac=10f4138a755a9cac19e08f5a411abce2e8b2cb8a9811d219940624031b469542"))),
        ),
       Positioned(
        left: MediaQuery.of(context).size.width/4.5,
        bottom:MediaQuery.of(context).size.height/14 ,
        child: const Text("E-Shop",style: TextStyle(color: Colors.white,fontSize: 95,),))
      ]),
    );
  }

  Future<void> gotoLogIn() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => ScreenLogin(),
    ));
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedpref = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedpref.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogIn();
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MainScreen(),
      ));
    }
  }
}
