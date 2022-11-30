import 'package:flutter/material.dart';


class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 40,
                ),
                child: Row(children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "images/mainlogo.png",
                    ),
                    backgroundColor: Colors.transparent,
                    radius: 25,
                  ),
                ]),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "Hi, Nice to meet you",
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Welcome to Hair Brace",
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage("images/onboardimg.png"),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.all(16),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    maximumSize: Size(double.infinity, 100),
                    backgroundColor: Colors.pinkAccent,
                    side: BorderSide(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    maximumSize: Size(double.infinity, 100),
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
