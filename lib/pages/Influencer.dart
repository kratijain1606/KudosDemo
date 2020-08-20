import 'package:flutter/material.dart';
import 'package:kudos_ware/home.dart';
// import 'package:kudos_ware/login.dart';
import 'package:kudos_ware/advertiser.dart';
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

  @override
  void dispose() {
    super.dispose();
  }

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
                Icons.tune,
                color: Colors.black,
              ),
              color: Color(0x34495c),
              onPressed: null),
          actions: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  "SignOut",
                  style: (TextStyle(color: Colors.black)),
                ),
              ],
            ),
            IconButton(
                icon: Icon(Icons.backup, color: Colors.black),
                color: Colors.black,
                onPressed: () async {
                  await _auth.signOut();
                }),
          ],
          iconTheme: IconThemeData(color: Colors.blue),
          // centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 150,
                child: Material(
                  color: Color(0xFF34495c),
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
                            radius: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "FoodBlogger",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(30, 0, 0, 0)),
                      Column(children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.photo,
                              color: Colors.white,
                              size: 30,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                            Text(
                              "30",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(40, 30, 0, 0)),
                            Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                            Text(
                              "30",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.message,
                              color: Colors.white,
                              size: 30,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                            Text(
                              "30",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(40, 30, 0, 0)),
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30,
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                            Text(
                              "30",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ],
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
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
          onTap: (index) {
            setState(() {
              _selectedPage = index;
            });
          },
        ));
  }
}
