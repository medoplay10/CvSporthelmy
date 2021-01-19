import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'Pages/auth/Login_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
          // alignment: Alignment.center,
          width: double.infinity,
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          child: Image.asset(
            "assets/images/splash.png",
            fit: BoxFit.fill,
          )),
    );
  }
}
