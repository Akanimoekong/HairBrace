import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hair_brace/Pages/view_hairdresser.dart';
import 'package:hair_brace/Reusables/bottom_nav.dart';
import 'package:hair_brace/Reusables/star_widget.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  ConstraintId categoryConstraint = ConstraintId('categoryConstraint');
  ConstraintId nameConstraint = ConstraintId('NameConstraint');
  ConstraintId bookingConstraint = ConstraintId('bookingConstraint');
  ConstraintId starConstraint = ConstraintId('starConstraint');
  ConstraintId box0 = ConstraintId('box0');
  ConstraintId box1 = ConstraintId('box1');

  String myImage = 'images/background.png';
  String salonNameNearby = "Rema'\s Salon";
  String salonNameRecent = "Rema'\s Salon";
  String salonLocation = "Eket, Akwa-Ibom State";
  String distance = "108 Km away";
  String timeFrom = '12:40pm';
  String timeTo = '5:40pm';
  String date = "15th July 2023";
  String category = "Hair do, Make up, Pedicure";
  String time = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 40, bottom: 8),
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    SnackBar newSnack = SnackBar(
                      content: Text(' I will be implemented soon'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(newSnack);
                  },
                  icon: Icon(Icons.menu),
                ),
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 8,
                      right: 16,
                    ),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(myImage), fit: BoxFit.cover),
                      shape: BoxShape.circle,
                      // color: Colors.indigo,
                    ),
                  ),
                  onTap: () {
                    SnackBar newSnack = SnackBar(
                      content: Text(' I will be implemented soon'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(newSnack);
                  },
                )
              ],
            ),
          ),
        ),

      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 1, bottom: 8),
            height: 1.0,
            color: Colors.black12,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nearby Saloons'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  ViewHairDresser()));

                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: 160,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              margin: EdgeInsets.only(right: 8),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: ( context, position) {
                  return Card(
                    shadowColor: Colors.grey,
                    color: Colors.transparent,
                    elevation: 10,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child: Container(
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(0),
                      width: 250,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 70,
                            width: 250 / 2,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomLeft: Radius.circular(16)),
                              image: DecorationImage(
                                image: AssetImage('images/saloon.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 100),
                                child: Center(
                                  child: Text(
                                    salonNameNearby,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 4),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 120),
                                  child: RatingBar.builder(
                                    itemSize: 20,
                                    itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxWidth: 120,
                                ),
                                child: Text(
                                  salonLocation,
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxWidth: 120,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 10,
                                    ),
                                    Text(
                                      distance,
                                      style: TextStyle(
                                        color: Colors.lightBlue,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Bookings'),
              ],
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, position) {
                  return  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/spraying.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                            ),
                          ),
                          SizedBox(
                            width: 230,
                            height: 95,
                            child: Stack(
                              children: [
                                ConstraintLayout(
                                  childConstraints: [
                                    Constraint(
                                      id: box0,
                                      size: 20,
                                      bottomLeftTo: parent,
                                      zIndex: 20,
                                    )
                                  ],
                                  children: [
                                    Container(
                                      // color: Colors.cyan,
                                      child: Text(
                                        category,
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.blue),
                                      ),
                                    ).apply(
                                      constraint: Constraint(
                                          margin: EdgeInsets.only(
                                            left: 8,
                                          ),
                                          id: categoryConstraint,
                                          width: 150,
                                          height: 20,
                                          topLeftTo: parent),
                                    ),
                                    Container(
                                      child: Text(
                                        salonNameRecent,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      padding: EdgeInsets.all(0),
                                    ).apply(
                                      constraint: Constraint(
                                          id: nameConstraint,
                                          top: categoryConstraint.bottom,
                                          left: categoryConstraint.left,
                                          width: 150,
                                          height: 20),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.date_range,
                                                size: 20,
                                              ),
                                              Text(
                                                date,
                                                style: TextStyle(fontSize: 9),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.timer_outlined,
                                                size: 20,
                                              ),
                                              Text('$timeFrom-$timeTo',
                                                  style:
                                                  TextStyle(fontSize: 9)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ).apply(
                                      constraint: Constraint(
                                          id: bookingConstraint,
                                          top: nameConstraint.bottom,
                                          left: nameConstraint.left,
                                          width: 200,
                                          height: 25),
                                    ),
                                    Container(
                                      // color: Colors.orange,
                                      child: StarDisplayWidget(
                                        key: UniqueKey(),
                                        value: 3,
                                        filledStar: Icon(Icons.star,
                                            color: Colors.orange, size: 20),
                                        unfilledStar: Icon(Icons.star_border,
                                            color: Colors.orange, size: 20,),
                                      ),
                                    ).apply(
                                      constraint: Constraint(
                                        id: starConstraint,
                                        top: bookingConstraint.bottom,
                                        left: bookingConstraint.left,
                                        width: 200,
                                        height: 25,
                                      ),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 4.0,
                                  right: 4.0,
                                  child: SizedBox(
                                    height: 30,
                                    width: 50,
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      color: Colors.blue,
                                      onPressed: () {
                                        SnackBar mSnackbar = SnackBar(
                                          content: Icon(
                                            Icons.face,
                                            color: Colors.red,
                                          ),
                                          backgroundColor: Colors.transparent,
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(mSnackbar);
                                      },

                                      child: Text(
                                        'Hire',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
