import 'package:flutter/material.dart';
import 'Profile.dart';

import 'dart:convert';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // centerTitle: true,

      body: FutureBuilder(
        builder: (context, snapshot) {
          var showData = json.decode(snapshot.data.toString());
          return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
            return Container(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFF34495c)),
                height: 100,
                child: Material(
                  color: Colors.white70,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(4),
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(10)),
                          CircleAvatar(
                            child: Image.network(
                              // "https://robohash.org/quametnatus.jpg?size=100x100&set=set1",
                              showData[index]['photo'],
                              // "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Hitman_4_artwork.jpg/220px-Hitman_4_artwork.jpg",
                              fit: BoxFit.fill,
                              cacheHeight: 100,
                              cacheWidth: 100,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              showData[index]['first_name'].toString() +
                                  ' ' +
                                  showData[index]['last_name'].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text("Hi, How are you? Let's Discuss"))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
          });
        },
        future: DefaultAssetBundle.of(context).loadString("MOCK1.json"),
      ),
    );
  }
}
