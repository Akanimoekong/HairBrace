import 'package:flutter/material.dart';
import 'package:hair_brace/Pages/recovery_password.dart';

class RecoveryEmail extends StatefulWidget {
  const RecoveryEmail({Key? key}) : super(key: key);

  @override
  State<RecoveryEmail> createState() => _RecoveryEmailState();
}

class _RecoveryEmailState extends State<RecoveryEmail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 76, right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Recovery Email',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              Text(
                'Enter a valid email that you would like your  recovery password to be sent to.',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 64, bottom: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text(
                      'Enter Recovery Email',
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  child: Text(
                    'Use phone number Instead',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400),
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
                          builder: (context) => RecoveryPassword(),
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
