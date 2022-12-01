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
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 40,
                ),
                child: Row(children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "images/mymainlogo.png",
                    ),
                    backgroundColor: Colors.transparent,
                    radius: 25,
                  ),
                ]),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: const Text(
                    "Hi, Nice to meet you",
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
              ),
              const Center(
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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
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
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    maximumSize: Size(double.infinity, 100),
                    backgroundColor: Colors.pinkAccent,
                    side: const BorderSide(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
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
                margin: const EdgeInsets.only(
                  right: 16,
                  left: 16,
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    maximumSize: Size(double.infinity, 100),
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
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
