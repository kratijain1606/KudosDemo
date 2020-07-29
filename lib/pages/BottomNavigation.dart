import 'package:flutter/material.dart';
import 'package:kudos_ware/home.dart';
import 'package:kudos_ware/login.dart';
import 'package:kudos_ware/advertiser.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  int _selectedPage = 0;
  final _pageOptions = [HomeScreen(), LoginPage(), AdvertiserPage()];
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
    );

    BottomNavigationBar(
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
    );
  }
}
