import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: Text('Login \n Welcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink)),
              ),
              Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white, //boxShadow: BoxShadow
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your username/Email' , hintStyle: TextStyle(color: Colors.pink)
                    ),
                  )),
              //password
              Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink),
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white, //boxShadow: BoxShadow
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    // prefixIcon: ,
                    suffixIcon: Icon(Icons.visibility_off),
                    border: InputBorder.none,
                    hintText: 'Enter Your Password',  hintStyle: TextStyle(color: Colors.pink)
                  ),
                ),
              ),

              //login

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    //height: 50,width: 500 ,

                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),

              //dont have an acccount
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don`t have an account?',
                      style: TextStyle(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
                width: 100,
                child: Divider(
                  thickness: 1,
                  color: Colors.pink,
                ),
              ),

              SizedBox(height: 10),

              //button login facebook

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    //height: 50,width: 500 ,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Login With Facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),

              // login google

              SizedBox(height: 10),

              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    //height: 50,width: 500 ,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Loginm with Google',
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ]),
      ),
    ));
  }
}
