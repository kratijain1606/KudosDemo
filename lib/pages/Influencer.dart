import 'package:flutter/material.dart';
import 'package:kudos_ware/home.dart';
import 'package:intl/intl.dart';
// import 'package:kudos_ware/login.dart';
import 'package:kudos_ware/advertiser.dart';
import 'package:kudos_ware/pages/Advertisers/filter.dart';
import 'package:kudos_ware/services/authentication.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  final Auth _auth = Auth();
  // final _pageOptions = [HomeScreen(), LoginPage(), AdvertiserPage()];
  @override
  void initState() {
    super.initState();
  }

  var pictures = new NumberFormat.compact().format(1234);

  var followers = new NumberFormat.compact().format(103424320);

  var comments = new NumberFormat.compact().format(123);

  var likes = new NumberFormat.compact().format(1034223450);
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 500,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.all(0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  height: 150,
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(4),
                    child: Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10)),
                        Column(
                          children: <Widget>[DisplayPicture()],
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                        Column(children: <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                          FirstRow(pictures, followers),
                          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                          SecondRow(comments, likes)
                          //  SecondRow(),
                        ])
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget DisplayPicture() {
  return Column(children: <Widget>[
    Padding(padding: EdgeInsets.all(10)),
    CircleAvatar(
      backgroundImage: AssetImage('download.png'),
      radius: 40,
    ),
    SizedBox(
      height: 10,
    ),
    Text(
      "FoodBlogger",
      style: TextStyle(color: Color(0xFF34495c)),
    ),
  ]);
}

Widget FirstRow(var a, var b) {
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      ),
      Icon(
        Icons.photo,
        color: Color(0xFF34495c),
        size: 30,
      ),
      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
      Text(
        a,
        style: TextStyle(color: Color(0xFF34495c), fontSize: 30),
      ),
      Padding(padding: EdgeInsets.fromLTRB(40, 30, 0, 0)),
      Icon(
        Icons.person,
        color: Color(0xFF34495c),
        size: 30,
      ),
      Padding(padding: EdgeInsets.fromLTRB(10, 0, 3, 0)),
      Text(
        b,
        style: TextStyle(color: Color(0xFF34495c), fontSize: 30),
      ),
    ],
  );
}

Widget SecondRow(var comments, var likes) {
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      ),
      Icon(
        Icons.message,
        color: Color(0xFF34495c),
        size: 30,
      ),
      Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
      Text(
        comments,
        style: TextStyle(color: Color(0xFF34495c), fontSize: 30),
      ),
      Padding(padding: EdgeInsets.fromLTRB(40, 30, 0, 0)),
      Icon(
        Icons.favorite,
        color: Color(0xFF34495c),
        size: 30,
      ),
      Padding(padding: EdgeInsets.fromLTRB(10, 0, 3, 0)),
      Text(
        likes,
        style: TextStyle(color: Color(0xFF34495c), fontSize: 30),
      ),
    ],
  );
}
