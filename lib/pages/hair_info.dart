import 'package:flutter/material.dart';
import 'package:hair_brace/Pages/booking_confirmation.dart';

class HairInfo extends StatefulWidget {
  const HairInfo({Key? key}) : super(key: key);

  @override
  State<HairInfo> createState() => _HairInfoState();
}

class _HairInfoState extends State<HairInfo> {
  String category = 'Adult';
  String hairName = 'Ghana Weaving';
  String hairDescription =
      "Hair Length: long and flowing, hair lengths vary, offering diverse options for"
      " styling.\nBraids: Braids range from simple to intricate, showcasing a variety of styles,"
      " including box braids, French braids, and fishtail braids.\nStyles: Hairstyles encompass"
      " sleek and straight looks, curly or wavy styles, elegant updos, and textured, effortless looks.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hair Infomation',
                  style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'More information on Ghana weaving',
                  style: TextStyle(fontSize: 12),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(
                        'images/ghanaweaving.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hairName,
                      style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      category,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  hairDescription,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              width: MediaQuery.of(context).size.width,
              height: 60,
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
                          builder: (context) => BookingConfirmation()));
                },
                color: Colors.blue,
                child: Text(
                  'Pick',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
