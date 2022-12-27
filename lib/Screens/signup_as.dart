import 'package:flutter/material.dart';
import 'package:hair_brace/Screens/new_signup.dart';


class SignUpAs extends StatelessWidget {
   SignUpAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 100,),
              const Center(
                child: Text(
                  "Sign Up as a",
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
                      image: ExactAssetImage("images/signupas.png"),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewSignup()));
                  },
                  child: const Text(
                    'Customer',
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
                    'HairStylist',
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
