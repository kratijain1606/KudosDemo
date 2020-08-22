import 'package:flutter/material.dart';
import 'CardList.dart';
import 'package:kudos_ware/models/cards.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // static List<cardd> listData;
  @override
  Widget build(BuildContext context) {
    return CardList(
        // listData: CardData,
        );
  }
}
