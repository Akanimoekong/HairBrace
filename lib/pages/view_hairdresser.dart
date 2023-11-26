import 'package:flutter/material.dart';
import 'package:hair_brace/Reusables/star_widget.dart';
import 'dresser_catalogue.dart';

class ViewHairDresser extends StatelessWidget {
  ViewHairDresser({Key? key}) : super(key: key);

  String dressername = 'Jessica Jones.';
  String serviceStarts = '8:00am';
  String serviceEnds = '7:00pm';
  String locationStr = 'Eket, Akwa-Ibom.';
  String description = 'Jessica Jones is a talented and passionate'
      ' hair stylist with a flair for creativity and an '
      'eye for detail. With years of experience in the industry,'
      ' Jessica has honed her skills to perfection,'
      ' making her a sought-after professional in the '
      'world of hairstyling.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/hairdresser.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 24),
                        child: Text(
                          dressername,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w800),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(

                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 30,
                              ),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Service Hrs.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Text('$serviceStarts-$serviceEnds',
                                    style: TextStyle(fontSize: 12))
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Location.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Text(
                                  locationStr,
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    StarDisplayWidget(
                      key: UniqueKey(),
                      value: 5,
                      filledStar:
                          Icon(Icons.star, color: Colors.orange, size: 20),
                      unfilledStar: Icon(
                        Icons.star_border,
                        color: Colors.orange,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              Container()
            ],
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              onPressed: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  DresserCatalogue()));
              },
              color: Colors.blue,
              child: Text(
                'View Styles',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
