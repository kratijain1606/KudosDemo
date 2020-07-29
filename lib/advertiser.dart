import 'package:flutter/material.dart';

class AdvertiserPage extends StatefulWidget {
  @override
  _AdvertiserPageState createState() => _AdvertiserPageState();
}

class _AdvertiserPageState extends State<AdvertiserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adagram',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                  fontFamily: 'Dancing Script',
                  fontWeight: FontWeight.w700)),
          backgroundColor: Colors.white70,

          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              color: Colors.black,
              onPressed: null),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.image, color: Colors.black),
                color: Colors.black,
                onPressed: null)
          ],
          iconTheme: IconThemeData(color: Colors.blue),
          // centerTitle: true,
        ),
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 300,
              child: Material(
                  color: Colors.black,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(4),
                  // shadowColor: Color(value),

                  child: Column(
                    children: <Widget>[
                      Text(
                        "Influencer Needed",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(30, 10, 0, 0)),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 50,
                              ),
                              Text(
                                "FoodBlogger",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                          Padding(padding: EdgeInsets.fromLTRB(30, 20, 0, 0)),
                          // Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.photo,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 0, 0)),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(40, 30, 0, 0)),
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 0, 0)),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.message,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 0, 0)),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(40, 30, 0, 0)),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 0, 0)),
                                  Text(
                                    "30",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 10)),
                      Text(
                        "Don't forget to add asset for your mobile app logo in the pubspec.yaml like this, and add your image named logo.png inside assets directory.",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(100, 0, 0, 0)),
                              Text(
                                "Total Bid:",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "20",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(270, 0, 0, 0)),
                              Text(
                                "Average Bid:",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "20",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ]));
  }
}
