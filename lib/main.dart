import 'package:financeapp/walkthrough/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash()
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SplashScreen(
        seconds: 5,
        navigateAfterSeconds:  OnBoardingOne(),
        image: new Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader:  TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red,
      loadingText: Text("Manage your Personal Finance"),
    );
  }
}
