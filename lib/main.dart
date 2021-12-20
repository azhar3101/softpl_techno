import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:softpal_techno/screen/home_page.dart';
import 'package:softpal_techno/screen/splash_screen.dart';
import 'package:softpal_techno/services/authentication.dart/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('emailId');
  print(email);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: email == null ? SplashScreens() : HomePage(),
  ));
}
