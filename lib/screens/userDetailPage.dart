import 'package:admin_app_ui/components/bottomBarIcons.dart';
import 'package:admin_app_ui/components/navigation_bar.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:flutter/material.dart';

class userDetailsPage extends StatefulWidget {
  @override
  _userDetailsPageState createState() => _userDetailsPageState();
}

class _userDetailsPageState extends State<userDetailsPage> {
  String dropDownValues = 'Reschedule';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('User detail'),
      body: Container(
        decoration: BoxDecoration(
          color: kBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: 'Booking No :',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '  #123',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.80)))
                        ]),
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Status : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '  Paid',
                              style: TextStyle(color: Colors.green))
                        ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.perm_identity),
                    SizedBox(width: 8.0),
                    Text(
                      'Babita Ji',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: 'Contact No : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '+91 9991110069',
                              style: TextStyle(color: Colors.green))
                        ]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: 'Booking Date : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '2/10/2020',
                              style: TextStyle(color: Colors.grey))
                        ]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: 'Booking Time : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: '10 AM',
                              style: TextStyle(color: Colors.grey))
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 17.0,
              ),
              Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Hair Cutting',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Rs 399',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                        );
                      })),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        text: 'Total Amount : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Rs 798',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.80)))
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        value: dropDownValues,
                        onChanged: (String newValue) {
                          setState(() {
                            dropDownValues = newValue;
                          });
                        },
                        items: <String>['Cancel', 'Reschedule', 'Notify']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 60.0,
        color: kBarColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            bottom_nav_icons(
              icons: Icon(
                Icons.home,
                size: 35.0,
                color: Colors.white,
              ),
              on_Press: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
