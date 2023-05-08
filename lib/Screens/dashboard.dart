import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {

  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFFFECDD6),
          textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xFFF63D68)))),
      home: SafeArea(
        child: Scaffold(
          // backgroundColor: Color(0xFFFECDD6),
          body: Container(
            child: Column( children: [

            ],
            ),
          ),
        ),
      ),
    );
  }
}
