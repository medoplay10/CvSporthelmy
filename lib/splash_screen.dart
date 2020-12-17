import 'package:flutter/material.dart';
import "package:flutter/src/services/system_chrome.dart";
import 'package:splashscreen/splashscreen.dart' as Splash;

import 'Pages/auth/Login_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xffF4F7FF)));
    return Scaffold(
      backgroundColor: Color(0xffF4F7FF),
      body: Container(
        margin: EdgeInsets.only(top: 100),
        color: Color(0xffF4F7FF),
        child: Splash.SplashScreen(
            seconds: 2,
            navigateAfterSeconds: new LoginScreen(),
            //    title: new Text('Welcome In SplashScreen'),
            image: new Image.asset("assets/images/IconApp.png"),
            backgroundColor: Color(0xffF4F7FF),
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 80,
            loaderColor: Colors.red),
      ),
    );
  }
}
