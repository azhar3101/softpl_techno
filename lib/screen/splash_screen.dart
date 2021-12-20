import 'dart:async';

import 'package:flutter/material.dart';
import 'package:softpal_techno/constant/colors.dart';
import 'package:softpal_techno/constant/string.dart';
import 'package:softpal_techno/services/authentication.dart/login_page.dart';
import 'package:softpal_techno/shared/base_widgets.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBarTitleColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: getImage(CustomImage.SplashImage)),
          Text("Please Wait...."),
          CircularProgressIndicator(
            color: AppColors.emergencyColor,
          )
        ],
      ),
    );
  }
}
