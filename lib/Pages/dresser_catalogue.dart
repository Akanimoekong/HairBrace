import 'package:flutter/material.dart';
import 'package:hair_brace/Pages/hair_info.dart';

class DresserCatalogue extends StatefulWidget {
  const DresserCatalogue({Key? key}) : super(key: key);

  @override
  State<DresserCatalogue> createState() => _DresserCatalogueState();
}

class _DresserCatalogueState extends State<DresserCatalogue> {
  String myImage = 'images/background.png';
  String profileOwner = 'Jessica';
  String nameOfHair = 'Ghana weaving';
  String price = '1000';
  String childrenPrice = '500';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.menu),
                  ),
                  Flexible(
                    child: Container(
                      height: 50,
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
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                            prefixIcon: Icon(Icons.search)),
                      ),
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
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 1, bottom: 8),
                height: 1.0,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '$profileOwner Catalogue',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TabBar(
                tabs: [
                  Tab(
                    child: Text('Adults'),
                  ),
                  Tab(
                    child: Text('Children'),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Expanded(
                child: TabBarView(children: [
                  //Adults
                  GridView.builder(
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
                              InkWell(onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  HairInfo()));

                              },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height / 9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('images/ghanaweaving.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 10,
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

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
                                        price, style: const TextStyle(fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width/0.5,
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        color: Colors.blue[400],
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
                                          'Pick',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 8),
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
                  // Children
                  GridView.builder(
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
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/ghanaweaving.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 10,
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        childrenPrice, style: const TextStyle(fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width/0.5,
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        color: Colors.blue[400],
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
                                          'Pick',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 8),
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
                ]),
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
                            builder: (context) => DresserCatalogue()));
                  },
                  color: Colors.blue,
                  child: Text(
                    'Next',
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
