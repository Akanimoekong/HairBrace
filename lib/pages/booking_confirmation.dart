import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';

import 'hair_info.dart';

class BookingConfirmation extends StatefulWidget {
  const BookingConfirmation({Key? key}) : super(key: key);

  @override
  State<BookingConfirmation> createState() => _BookingConfirmationState();
}

class _BookingConfirmationState extends State<BookingConfirmation> {
  ConstraintId cardName = ConstraintId('cardName');
  ConstraintId cardNumberTxt = ConstraintId('cardNumberTxt');
  ConstraintId cardNumber = ConstraintId('cardNumber');
  ConstraintId expiryDateTxt = ConstraintId('expiryDateTxt');
  ConstraintId expiryDate = ConstraintId('expiryDate');

  String cardNumberStr = "5695 5259 5545 5856";
  String expiryDateStr = "23/57";
  String cardNameStr = "AKANIMO EKONG";
  String nameOfHair = "Ghana Weaving";
  String price = "500";
  String mPrice = "500";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Booking Confirmation',
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Secure your Booking',
                    style: TextStyle(fontSize: 12),
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'images/additem.svg',
                          color: Colors.blue,
                        ),
                        const Text(
                          'Change Card',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            image: AssetImage(
                              'images/card.png',
                            ),
                            fit: BoxFit.fill)),
                    child: ConstraintLayout(
                      children: [
                        Text(
                          cardNameStr,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ).apply(
                          constraint: Constraint(
                              margin: const EdgeInsets.only(left: 24, top: 24),
                              id: cardName,
                              topLeftTo: parent),
                        ),
                        const Text(
                          'Card Number',
                          style: TextStyle(color: Colors.white54, fontSize: 12),
                        ).apply(
                          constraint: Constraint(
                              margin: const EdgeInsets.only(top: 24),
                              id: cardNumberTxt,
                              top: cardName.bottom,
                              left: cardName.left),
                        ),
                        Text(
                          cardNumberStr,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ).apply(
                          constraint: Constraint(
                              margin: const EdgeInsets.only(top: 4),
                              id: cardNumber,
                              top: cardNumberTxt.bottom,
                              left: cardNumberTxt.left),
                        ),
                        const Text(
                          'Expiry Date',
                          style: TextStyle(color: Colors.white54, fontSize: 12),
                        ).apply(
                          constraint: Constraint(
                              margin: const EdgeInsets.only(top: 24),
                              id: expiryDateTxt,
                              top: cardNumber.bottom,
                              left: cardNumber.left),
                        ),
                        Text(
                          expiryDateStr,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ).apply(
                          constraint: Constraint(
                              margin: const EdgeInsets.only(top: 4),
                              id: expiryDate,
                              top: expiryDateTxt.bottom,
                              left: expiryDateTxt.left),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 220,
                              childAspectRatio: 0.86,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 12),
                      itemBuilder: (context, position) {
                        return Card(
                          elevation: 10,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HairInfo()));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height:
                                        MediaQuery.of(context).size.height / 9,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'images/ghanaweaving.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: Text(
                                          nameOfHair,
                                          style: TextStyle(
                                              color: Colors.blue[400],
                                              fontWeight: FontWeight.w900,
                                              fontSize: 11),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 4),
                                        child: Text(
                                          price,
                                          style: const TextStyle(fontSize: 11),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 35,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                0.5,
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          color: Colors.blue[400],
                                          onPressed: () {
                                            SnackBar mSnackbar = SnackBar(
                                              content: Icon(
                                                Icons.face,
                                                color: Colors.red,
                                              ),
                                              backgroundColor:
                                                  Colors.transparent,
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(mSnackbar);
                                          },
                                          child: Text(
                                            'Pick',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 20,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 10,
                    child: Row(
                      children: [
                        Flexible(
                            child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Appointment Date',
                            labelStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 16,
                        ),
                        Flexible(
                            child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Appointment Time',
                            labelStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('N2,000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  onPressed: () {
/*
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingConfirmation()));
*/
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Book Appointment',
                    style: TextStyle(
                      color: Colors.white,
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
