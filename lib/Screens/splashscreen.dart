import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "images/mainlogo.png",
              ),
            ),
            Center(
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
