import 'package:flutter/material.dart';
import 'package:hair_brace/Screens/signup_as.dart';
import 'package:hair_brace/generated/assets.dart';
import 'package:hair_brace/login.dart';

class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    // Assets.imagesOnboardimg,
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
                    image: ExactAssetImage(Assets.imagesOnboardimg),
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()));
                },
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
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpAs(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.pink,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
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
                  )
/*                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpAs(),
                      ),
                    );*/
                  ),
            )
          ],
        ),
      ),
    );
  }
}
