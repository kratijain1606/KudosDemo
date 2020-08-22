import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kudos_ware/home.dart';
import 'package:kudos_ware/pages/Advertisers/login.dart';
import 'login_signup_page.dart';
import 'package:kudos_ware/services/authentication.dart';

import 'package:kudos_ware/pages/Advertisers/Chat.dart';
import 'package:kudos_ware/pages/Advertisers/Profile.dart';
import 'package:kudos_ware/pages/Advertisers/filter.dart';
import 'Influencer.dart';

class InfluencerMain extends StatefulWidget {
  @override
  _InfluencerMainState createState() => _InfluencerMainState();
}

class _InfluencerMainState extends State<InfluencerMain> {
  int _currentIndex = 0;
  int _selectedPage = 0;
  // factory NumberFormat.compact({

  // }),
//   factory NumberFormat.compact({String locale}) {
//   return _CompactNumberFormat(
//       locale: locale,
//       formatType: _CompactFormatType.COMPACT_DECIMAL_SHORT_PATTERN);
// }

  final Auth _auth = Auth();
  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomePage(),
      Chat(),
      Profile(),
      filter(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Adagram',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
                fontFamily: 'Dancing Script',
                fontWeight: FontWeight.w700)),
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.tune,
              color: Colors.white70,
            ),
            color: Color(0x34495c),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => filter()));
            }),
        actions: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                "SignOut",
                style: (TextStyle(color: Colors.white70)),
              ),
            ],
          ),
          IconButton(
              icon: Icon(Icons.backup, color: Colors.white70),
              color: Colors.white70,
              onPressed: () async {
                await _auth.signOut();

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
        ],
        iconTheme: IconThemeData(color: Colors.blue),
        // centerTitle: true,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          // backgroundColor: Colors.black,
          fixedColor: Colors.red,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
              title: Text("Home"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
                title: Text("Chat"), icon: Icon(Icons.message)),
            BottomNavigationBarItem(
                title: Text("Profile"), icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                title: Text("Filter"), icon: Icon(Icons.filter_1)),
          ]),
    );
  }
}
