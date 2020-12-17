import 'package:cv_sports/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [Locale('en'), Locale('ar')],
    path: "assets/langs",
    startLocale: Locale('ar'),
    saveLocale: true,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, //or set color with: Color(0xFF0000FF)
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.black));

    return MaterialApp(
      title: 'Cv.Sport',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        EasyLocalization.of(context).delegate
      ],
      supportedLocales: EasyLocalization.of(context).supportedLocales,
      locale: EasyLocalization.of(context).locale,
      theme: ThemeData(
        textTheme: TextTheme(
          button: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE03D3D),
              fontFamily: 'Tajawal'),
          headline1: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF494861),
              fontFamily: 'Tajawal-Bold'),
          headline2: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF8E93A2),
              fontFamily: 'Tajawal-Regular'),
          headline3: TextStyle(
              fontSize: 17,
              color: Color(0xFF091232),
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal-Bold'),
          headline4: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFA9B2D2),
              fontFamily: 'Tajawal-Bold'),
          headline5: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2C2B53),
              fontFamily: 'Tajawal-Regular'),
          headline6: TextStyle(
              fontSize: 19.0,
              color: Color(0xFF091232),
              fontFamily: 'Tajawal-Bold'),
          bodyText1: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF091232),
              fontFamily: 'Tajawal-Regular'),
          bodyText2: TextStyle(
              fontSize: 14.0,
              color: Color(0xFF606060),
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal-Regular'),
          subtitle1: TextStyle(
              fontSize: 10.0,
              color: Color(0xFFC2C8D7),
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal-Bold'),
          subtitle2: TextStyle(
              fontSize: 10.0,
              color: Color(0xFFFD8C44),
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal-Bold'),
          caption: TextStyle(
              fontSize: 16.0,
              color: Color(0xFFE03D3D),
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal'),
        ),
        hintColor: Color(0xFFE0E3EC),
        primaryColor: Color(0xFFFD8C44),
        //Color(0xFFFD8C44)
        accentColor: Color(0xFFFFFFFF),
        focusColor: Color(0xFF8C98A8),
        backgroundColor: Color(0xFF494861),
        canvasColor: Colors.white,
        fontFamily: 'Tajawal',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash_Screen(),
    );
  }
}
