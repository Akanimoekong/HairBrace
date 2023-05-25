import 'package:flutter/material.dart';
import 'package:hair_brace/Screens/new_login.dart';
import 'package:hair_brace/Screens/signup_as.dart';
import 'package:hair_brace/generated/assets.dart';
import 'package:hair_brace/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: const Text(
                  "Hi, Nice to meet you",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const Center(
              child: Text(
                "Welcome to Hair Brace",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Center(
              child: Container(
                child: SvgPicture.asset('images/welcome.svg', fit: BoxFit.fill,
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
                        builder: (context) => NewLogin(),
                      ),
                    );
                  },
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('images/google.svg',height: 30, width: 30,),
                       Text(
                        '    Continue With Google',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ],
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
                      color: Colors.blueAccent,
                    ),
                  )
/*                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpAs(),
                      ),
                    );*/
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
                  backgroundColor: Colors.blue,
                  side: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: const Text(
                  'Sign Up',
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
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
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
                    backgroundColor: Colors.blue[100],
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
