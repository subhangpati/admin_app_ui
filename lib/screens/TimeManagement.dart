import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class timeManagement extends StatefulWidget {
  @override
  _timeManagementState createState() => _timeManagementState();
}

class _timeManagementState extends State<timeManagement> {
  bool Value1 = false;
  bool Value2 = false;
  bool Value3 = false;
  bool Value4 = false;
  bool Value5 = false;
  bool Value6 = false;
  bool Value7 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          15.0, // Move to right 10  horizontally
                          15.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Opening hours ',
                                style: TextStyle(fontSize: 17.0)),
                            SizedBox(height: 25.0),
                            Text('Closing hours ',
                                style: TextStyle(fontSize: 17.0)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              height: 50.0,
                              width: 250.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter a search term'),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                              width: 250.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter a search term'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ), //Todo : Adding another list of contom time has been left due to complexity issues.
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          15.0, // Move to right 10  horizontally
                          15.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      buildSwitchListTile(Title: "Monday", Value: Value1,
                          onChanged: (val) => setState(() => Value1 = val)),
                      buildSwitchListTile(Title: "Tuesday", Value: Value2,
                          onChanged: (val) => setState(() => Value2 = val)),
                      buildSwitchListTile(Title: "Wednesday", Value:  Value3,
                          onChanged: (val) => setState(() => Value3 = val)),
                      buildSwitchListTile(Title: "Thursday", Value: Value4,
                          onChanged: (val) => setState(() => Value4 = val)),
                      buildSwitchListTile(Title: "Friday", Value: Value5,
                          onChanged: (val) => setState(() => Value5 = val)),
                      buildSwitchListTile(Title: "Saturday", Value: Value6,
                          onChanged: (val) => setState(() => Value6 = val)),
                      buildSwitchListTile(Title: "Sunday", Value: Value7,
                          onChanged: (val) => setState(() => Value7 = val)),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  SwitchListTile buildSwitchListTile({
    String Title,
    bool Value,
    void Function(bool) onChanged,
  }) {
    return SwitchListTile(
      title: Text(Title),
      value: Value,
      onChanged: onChanged,
    );
  }
}
