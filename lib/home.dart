import 'package:flutter/material.dart';
import 'package:kudos_ware/pages/root_page.dart';
import 'package:kudos_ware/services/authentication.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(80, 70, 60, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            LOGO(context),
            BuTTons("INFLUENCER", context, Colors.blue),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            BuTTons("ADVERTISER", context, Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget LOGO(context) {
  return Column(children: [
    Text("Adgram",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.blue,
            fontSize: MediaQuery.of(context).size.height * 0.11,
            height: 3.5,
            fontFamily: 'Dancing Script',
            fontWeight: FontWeight.w700)),
    SizedBox(
      width: MediaQuery.of(context).size.height * 0.01,
      height: MediaQuery.of(context).size.height * 0.01,
    )
  ]);
}

Widget BuTTons(String text, BuildContext context, Color clr) {
  return Center(
    child: new RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        padding: EdgeInsets.all(16),
        color: clr,
        child: Text(text,
            style: TextStyle(
                color: Colors.white, fontSize: 30.0, fontFamily: 'RobotoMono')),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RootPage(auth: new Auth())));
        }),
  );
}
