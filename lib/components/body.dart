import 'package:flutter/material.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:admin_app_ui/screens/BookingPage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: Row(
          children: <Widget>[
            Expanded(child: reusedContainer(icon: Icon(Icons.calendar_today , size: 45.0), label: 'Today' , ontap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => bookingPage()),
              );

            },),),
            Expanded(child: reusedContainer(icon: Icon(Icons.calendar_today , size: 45.0), label: 'All' ,),)
          ],
        ),),
        Expanded(child: Row(
          children: <Widget>[
            Expanded(child: reusedContainer(icon: Icon(Icons.calendar_today , size: 45.0), label: 'Pending' ,),),
            Expanded(child: reusedContainer(icon: Icon(Icons.calendar_today , size: 45.0), label: 'Completed' ,),)
          ],
        ),),
        Center(child: reusedContainer(icon: Icon(Icons.cancel , size: 45.0), label: 'Cancel' ,),)
        ],
    );
  }
}

class reusedContainer extends StatelessWidget {

  reusedContainer({ this.icon , this.label , this.ontap});
  final Icon icon ;
  final String label ;
  final Function ontap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: ontap,      // ontap function has been added but not utilized . Will have to
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
              icon ,
              Text(label)
            ],
          )

      ),
    );
  }
}

