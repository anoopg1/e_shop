import 'package:e_shop/presentation/login/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> logOutFunction(BuildContext context) async {
  final _sharedpref = await SharedPreferences.getInstance();
  _sharedpref.clear();
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => ScreenLogin(),
      ),
      (route) => false);
}
