import 'package:flutter/material.dart';
import 'Profile.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // centerTitle: true,

      body: ListView.builder(
        itemCount: 500,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
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
                          backgroundImage: AssetImage('download.png'),
                          radius: 35,
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
                            "Mellena P.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text("Hi, How are you?")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
