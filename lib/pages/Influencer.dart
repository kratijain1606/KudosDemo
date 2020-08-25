import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: FutureBuilder(
          builder: (context, snapshot) {
            var showData = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                if (showData[index]['posts'] < 100 ||
                    showData[index]['comments'] < 142 ||
                    showData[index]['followers'] < 144 ||
                    showData[index]['likes'] < 134) {
                  print(showData[index]['posts']);
                  return Container();
                } else {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(10),
                            child: Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.all(10)),
                                Column(
                                  children: <Widget>[
                                    DisplayPicture(showData[index]['photo'])
                                  ],
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0)),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                                      child: Icon(
                                        Icons.photo,
                                        color: Color(0xFF34495c),
                                        size: 27,
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 35, 0, 0)),
                                    Icon(
                                      Icons.message,
                                      color: Color(0xFF34495c),
                                      size: 27,
                                    ),
                                  ],
                                ),
                                Column(children: <Widget>[
                                  //  new NumberFormat.compact().format(1234);
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 30, 0, 0)),
                                  FirstRow(new NumberFormat.compact()
                                      .format(showData[index]['posts'])
                                      .toString()),

                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 30, 0, 0)),
                                  SecondRow(new NumberFormat.compact()
                                      .format(showData[index]['comments'])
                                      .toString()),
                                ]),
                                Padding(
                                  padding: EdgeInsets.all(7),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
                                      child: Icon(
                                        Icons.person,
                                        color: Color(0xFF34495c),
                                        size: 27,
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 35, 0, 0)),
                                    Icon(
                                      Icons.favorite,
                                      color: Color(0xFF34495c),
                                      size: 27,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                                Column(children: <Widget>[
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 30, 0, 0)),
                                  FirstRow(new NumberFormat.compact()
                                      .format(showData[index]['followers'])
                                      .toString()),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 30, 0, 0)),
                                  FirstRow(new NumberFormat.compact()
                                      .format(showData[index]['likes'])
                                      .toString()),
                                  //  SecondRow(),
                                ]),
                              ],
                            )),
                      ),
                    ),
                  );
                }
              },
              itemCount: showData.length,
            );
          },
          future: DefaultAssetBundle.of(context).loadString("MOCK1.json"),
        ),
        // Column(children: <Widget>[
        //   Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
        //   FirstRow(pictures),
        //   Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
        //   SecondRow(comments)
        //   //  SecondRow(),
        // ]),
      ),
    );
  }
}

Widget DisplayPicture(String pic) {
  return Column(children: <Widget>[
    Padding(padding: EdgeInsets.all(10)),
    Container(
      child: CircleAvatar(
        child: Image.network(
          // "https://robohash.org/quametnatus.jpg?size=100x100&set=set1",
          pic,
          // "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Hitman_4_artwork.jpg/220px-Hitman_4_artwork.jpg",
          fit: BoxFit.fill,
          cacheHeight: 100,
          cacheWidth: 100,
        ),
        radius: 40,
      ),
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

Widget FirstRow(var a) {
  return Row(
    children: <Widget>[
      // Padding(padding: EdgeInsets.fromLTRB(10, 0, 3, 0)),
      Text(
        a,
        style: TextStyle(color: Color(0xFF34495c), fontSize: 27),
      ),
      Padding(padding: EdgeInsets.fromLTRB(10, 0, 3, 0)),
    ],
  );
}

Widget SecondRow(var comments) {
  return Row(
    children: <Widget>[
      // Padding(padding: EdgeInsets.fromLTRB(10, 0, 3, 0)),
      Text(
        comments,
        style: TextStyle(color: Color(0xFF34495c), fontSize: 27),
      ),
      Padding(padding: EdgeInsets.fromLTRB(10, 0, 3, 0)),
    ],
  );
}
