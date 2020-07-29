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
                  color: Color(0xFF34495c),
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(4),
                  // shadowColor: Color(value),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
                      Row(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 50,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "FoodBlogger",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(30, 20, 0, 0)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Influencer Needed",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.photo,
                                    color: Colors.white,
                                    size: 30,
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
                                    size: 30,
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
                                    size: 30,
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
                                    size: 30,
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
                        "Some text here",
                        style: TextStyle(color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
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
                          SizedBox(
                            width: 0.2 * MediaQuery.of(context).size.width,
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
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
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_box),
                title: Text("Checkbox"),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                title: Text("msg"),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("profile"),
                backgroundColor: Colors.black)
          ],
        )
        );
  }
}
