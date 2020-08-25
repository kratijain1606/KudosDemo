// import 'dart:html';

import 'package:flutter/material.dart';

// import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:kudos_ware/services/authentication.dart';
import 'Chat.dart';

class filter extends StatefulWidget {
  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  // SfRangeValues _values = SfRangeValues(40.0, 80.0);
  RangeValues values1 = RangeValues(1, 10000000);
  RangeLabels labels1 = RangeLabels('1', '10000000');
  RangeValues values2 = RangeValues(1, 10000000);
  RangeLabels labels2 = RangeLabels('1', '10000000');
  RangeValues values3 = RangeValues(1, 10000000);
  RangeLabels labels3 = RangeLabels('1', '10000000');
  RangeValues values4 = RangeValues(1, 10000000);
  RangeLabels labels4 = RangeLabels('1', '10000000');
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
                  Row(
                    children: [
                      RangeSlider(
                        min: 0.0,
                        max: 10000000,
                        values: values1,
                        divisions: 100,
                        labels: labels1,
                        onChanged: (value) {
                          print('START: ${value.start}, END:${value.end}');
                          setState(() {
                            values1 = value;
                            labels1 = RangeLabels(
                                value.start.toString(), value.end.toString());
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Likes"),
                  Row(
                    children: [
                      RangeSlider(
                        min: 0.0,
                        max: 10000000,
                        values: values2,
                        divisions: 100,
                        labels: labels2,
                        onChanged: (value) {
                          print('START: ${value.start}, END:${value.end}');
                          setState(() {
                            values2 = value;
                            labels2 = RangeLabels(
                                value.start.toString(), value.end.toString());
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Comments"),
                  Row(
                    children: [
                      RangeSlider(
                        min: 0.0,
                        max: 10000000,
                        values: values3,
                        divisions: 100,
                        labels: labels3,
                        onChanged: (value) {
                          print('START: ${value.start}, END:${value.end}');
                          setState(() {
                            values3 = value;
                            labels3 = RangeLabels(
                                value.start.toString(), value.end.toString());
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Posts"),
                  Row(
                    children: [
                      RangeSlider(
                        min: 0.0,
                        max: 10000000,
                        values: values4,
                        divisions: 100,
                        labels: labels4,
                        onChanged: (value) {
                          print('START: ${value.start}, END:${value.end}');
                          setState(() {
                            values4 = value;
                            labels4 = RangeLabels(
                                value.start.toString(), value.end.toString());
                          });
                        },
                      ),
                    ],
                  )
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
