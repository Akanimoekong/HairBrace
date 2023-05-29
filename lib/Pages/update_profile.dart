import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);
  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFECDD6),
      appBar: AppBar(
        backgroundColor: Color(0XFFFECDD6),
        leading: Container(
          child: Container(
            margin: EdgeInsets.only(left: 8.0),
            child: IconButton(
                onPressed: () {Navigator.pop;},
                icon: SvgPicture.asset(
                  "images/ic_back.svg",
                  width: 60,
                  height: 60,
                )),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 16),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Stack(
                      children: [
                          Positioned(
                            child: Container(
                            margin: EdgeInsets.only(top: 16),
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                border: Border.all(color: Colors.pink, width: 3.5)
                            ),
                          ), ),
                        Positioned(
                            bottom:  0.1,
                            right: 0.2,

                            child: FloatingActionButton(
                              onPressed: () {  },
                              child: Icon(Icons.camera_alt),
                            ),)

                      ],
                    )


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
