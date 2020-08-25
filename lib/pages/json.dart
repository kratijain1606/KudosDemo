import 'package:flutter/material.dart';

import 'dart:convert';

class Json extends StatefulWidget {
  @override
  _JsonState createState() => _JsonState();
}

class _JsonState extends State<Json> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Load JSON File From Local"),
      ),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot) {
            var showData = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(showData[index]['number'].toString()),
                  subtitle: Text(showData[index]['likes'].toString()),
                );
              },
              itemCount: showData.length,
            );
          },
          future: DefaultAssetBundle.of(context).loadString("generated1.json"),
        ),
      ),
    );
  }
}
