import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hair_brace/Screens/update_profile.dart';

import 'Screens/customer_signup.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

@override
  void dispose() {
  emailController.dispose();
  passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 80),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Text(
                        "Welcome Back \n Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter Your Username / Email",
                        hintStyle: TextStyle(color: Colors.blue),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 0.8,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 0.8,
                          ),
                        ),                  ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(color: Colors.blue),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 0.8,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 0.8,
                          ),
                        ),                  ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // log('SignUp successful');
                        Navigator.push(context, MaterialPageRoute(builder:(context) => UpdateProfile()));

                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF63D68),
                        // backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context) => CustomerSignUp()));

                              },
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.blue,
                            ),
                          ),
                          Text('  Or  '),
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Login with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(15),

                      ),
                      icon: Icon(Icons.facebook_rounded),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.all(8.0),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Login with Google',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.blue),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      icon: Icon(Icons.ac_unit)
                    ),
                  ),
                ],
              ),
            ),
          ),

        ),
    );
  }

  Future signIn () async{
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim())
        .then((value) {})
        .onError((error, stackTrace) {});  }
}
