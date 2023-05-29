import 'package:flutter/material.dart';

import 'create_password.dart';

class RecoveryPassword extends StatefulWidget {
  const RecoveryPassword({Key? key}) : super(key: key);

  @override
  State<RecoveryPassword> createState() => _RecoveryPasswordState();
}

class _RecoveryPasswordState extends State<RecoveryPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 76, right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recovery Password',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              Text(
                'Enter the five digit code that was sent to your recovery mail.',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 64, bottom: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Enter Recovery password',
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.only(
                  top: 32,
                  right: 8,
                  left: 8,
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreatePassword(),
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
                      maximumSize: Size(double.infinity, 100),
                      backgroundColor: Colors.blue,
                    ),
                    child: Text('Next', style: TextStyle(color: Colors.white))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
