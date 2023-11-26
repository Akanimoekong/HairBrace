import 'package:flutter/material.dart';
import 'package:hair_brace/Pages/recovery_email.dart';

import 'package:flutter_svg/flutter_svg.dart';

class NewLogin extends StatefulWidget {
  const NewLogin({Key? key}) : super(key: key);

  @override
  State<NewLogin> createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  String username = "Bola";

  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Flexible(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 64),
                  width: MediaQuery.of(context).size.width,
                  child: Column(

                    children: [
                      Center(
                        child: SvgPicture.asset(
                          'images/loginlogo.svg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "Welcome Back $username.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _obscured,
                              focusNode: textFieldFocusNode,
                              decoration: InputDecoration(
                                
                                label: Text('password'),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black38,
                                  ),
                                ),
                                suffixIcon: Padding(padding: EdgeInsets.fromLTRB(0,0,4,0,),
                                  child: InkWell(onTap: _toggleObscured,
                                  child: Icon(
                                    _obscured? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined
                                        ,size: 24,
                                  ),),
                                  
                                )
                              ),

                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Forgot Password ?',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: const EdgeInsets.only(
                    bottom: 32,
                    right: 16,
                    left: 16,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecoveryEmail(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login',
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
                        backgroundColor: Colors.blue,
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
        ),
      ),
    );
  }
}
