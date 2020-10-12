import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/navigation_bar.dart';

class addRemovePackage extends StatefulWidget {
  @override
  _addRemovePackageState createState() => _addRemovePackageState();
}

class _addRemovePackageState extends State<addRemovePackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              height: 100.0,
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        height: 100.0,
                        width: 100.0,
                        child: Image.asset("images/smsample.jpeg")),
                    Text('Bridal Package',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                    IconButton(icon: Icon(Icons.edit), onPressed: () {})
                  ]),
            );
          }),
    );
  }
}
