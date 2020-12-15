import 'package:admin_app_ui/constants.dart';
import 'package:admin_app_ui/history/PreviousAppointment.dart';
import 'package:admin_app_ui/history/TodayAppointment.dart';
import 'package:admin_app_ui/history/UpcomingAppointment.dart';
import 'package:admin_app_ui/timeScheduling/DatePage.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: reusedContainer(
                    icon: Icon(Icons.access_time, size: 45.0),
                    label: 'TODAY',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TodaysAppointment()),
                      );
                    })),
            Expanded(
              child: reusedContainer(
                icon: Icon(Icons.assignment_turned_in_outlined, size: 45.0),
                label: 'FINISHED',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PreviousAppointment()));
                },
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: reusedContainer(
                  icon: Icon(Icons.add_alert, size: 45.0),
                  label: 'UPCOMING ',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpcomingAppointment()),
                    );
                  }),
            ),
            Expanded(
              child: reusedContainer(
                icon: Icon(Icons.calendar_today, size: 45.0),
                label: 'CALENDAR',
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DateSelector()));
                },
              ),
            )
          ],
        ),
        // Center(
        //   child: reusedContainer(
        //     icon: Icon(Icons.cancel, size: 45.0),
        //     label: 'Cancel',
        //   ),
        // )
      ],
    );
  }
}

class reusedContainer extends StatelessWidget {
  reusedContainer({this.icon, this.label, this.ontap});
  final Icon icon;
  final String label;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          ontap, // ontap function has been added but not utilized . Will have to
      child: Container(
          margin: EdgeInsets.all(15.0),
          height: 180.0,
          width: 180.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: kBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              icon,
              Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
