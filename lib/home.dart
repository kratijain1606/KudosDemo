import 'package:flutter/material.dart';
import 'login.dart';
import 'Profile.dart';
import 'package:provider/provider.dart';
import 'authorization.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        //   providers: [ChangeNotifierProvider.value(value: Authentication())],
        // );
        // builder:
        // (context) {
        //   child:
        Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(80, 70, 60, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Adgram",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 60.0,
                    height: 3.5,
                    fontFamily: 'Dancing Script',
                    fontWeight: FontWeight.w700)),
            SizedBox(
              width: 80.0,
              height: 80.0,
            ),
            new RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: EdgeInsets.all(12),
                color: Colors.blue,
                child: Text("INFLUENCER",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'RobotoMono')),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                }),
            SizedBox(
              width: 80.0,
              height: 80.0,
            ),
            new RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: EdgeInsets.all(12),
                color: Colors.green,
                child: Text("ADVERTISER",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'Dancing Script')),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                  // LoginPage();
                }),
          ],
        ),
      ),
    );
  }
}
