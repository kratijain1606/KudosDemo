import 'package:flutter/material.dart';

import 'package:kudos_ware/services/authentication.dart';
import 'Chat.dart';

class filter extends StatefulWidget {
  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  @override
  double _currentSliderValue = 20;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Followers"),
                  Slider(
                    min: 0,
                    max: 100,
                    divisions: 5,
                    value: _currentSliderValue,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue:
                        value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Likes"),
                  Slider(
                    min: 0,
                    max: 100,
                    divisions: 5,
                    value: _currentSliderValue,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue:
                        value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Comments"),
                  Slider(
                    min: 0,
                    max: 100,
                    divisions: 5,
                    value: _currentSliderValue,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue:
                        value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Posts"),
                  Slider(
                    min: 0,
                    max: 100,
                    divisions: 5,
                    value: _currentSliderValue,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue:
                        value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Location"),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Location"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Type"),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Type"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(),
            RaisedButton(
              onPressed: () {},
              child: const Text("Filter"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
