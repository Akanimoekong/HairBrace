import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hair_brace/Screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (BuildContext context) =>
                Onboarding()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "images/mymainlogo.png",
                  ),
                ),
                const Center(
                  child: Text(
                    "The essence of hair",
                    style: TextStyle(
                        color: Colors.pink,
                        fontFamily: 'Post No Bills Colombo',
                        fontSize: 22
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}






