import 'package:flutter/material.dart';


import 'dashboard.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {

  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  final textFieldFocusNode2 = FocusNode();
  bool _obscured2 = true;

  void _toggleObscured() {
    setState(() {

      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;


    });
  }
  void _toggleObscured2() {
    setState(() {

      _obscured2 = !_obscured2;
      if (textFieldFocusNode2.hasPrimaryFocus) return;
      textFieldFocusNode2.canRequestFocus = false;


    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 76, right: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create Password',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                const Text(
                  'Create a new password that will be easier to remember.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 64, bottom: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscured,
                    decoration: InputDecoration(

                        label: const Text('Enter new Password'),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                        suffixIcon: Padding(padding: const EdgeInsets.fromLTRB(0,0,4,0,),
                          child: InkWell(onTap: _toggleObscured,
                            child: Icon(
                              _obscured? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined
                              ,size: 24,
                            ),),

                        )
                    ),

                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscured2,
                    decoration: InputDecoration(

                        label: const Text('Re-enter Recovery password'),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                        suffixIcon: Padding(padding: const EdgeInsets.fromLTRB(0,0,4,0,),
                          child: InkWell(onTap: _toggleObscured2,
                            child: Icon(
                              _obscured? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined
                              ,size: 24,
                            ),),

                        )
                    ),

                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: const EdgeInsets.only(top: 32,right: 8, left: 8,),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Dashboard(),
                      ),
                    );
                    },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        maximumSize: const Size(double.infinity, 100),
                        backgroundColor: Colors.blue,
                      ),
                    child: const Text('Done', style: TextStyle(color: Colors.white))
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
