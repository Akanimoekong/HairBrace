import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hair_brace/Screens/onboarding.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Onboarding(),),),);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image.asset("images/mainlogo.png"),
        ),
      ),
    );
  }
}



