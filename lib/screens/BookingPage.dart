import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/navigation_bar.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:admin_app_ui/screens/userDetailPage.dart';


class bookingPage extends StatefulWidget {
  @override
  _bookingPageState createState() => _bookingPageState();
}

class _bookingPageState extends State<bookingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:  ListView.builder(
        itemCount: 3,
        itemBuilder: (context , index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>userDetailsPage()));
            },
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(20.0),
                 boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
              ),
              padding: EdgeInsets.all(7.0),
              child: Column(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:5.0 , bottom: 15.0, left: 1.0 , right: 5.0),
                      child: Text('Booking No : #123' , style: TextStyle(color:Colors.grey, fontSize: 15.0 ),),
                    ),
                    Container(
                      height: 30.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(child: Text('Piad' , style : TextStyle(fontSize: 15.0 , 
                    color: Colors.white))),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(left:28.0 , top : 5.0 , right: 10.0 , bottom: 10.0),
                      child: Text('Babita ji' , style : TextStyle(color: Colors.black.withOpacity(.75) , fontSize: 23.0)),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround , 
                  children: <Widget>[
                    Text('12/4/21' , style: TextStyle(color:Colors.grey, fontSize: 17.0 ),),
                    Text('12:30 AM' , style: TextStyle(color:Colors.grey, fontSize: 17.0 ),),
                    Text('Rs 499' , style: TextStyle(color:Colors.grey, fontSize: 17.0 ),),
                  ],
                ),
              ],),
            ));
        }),   
      );
  }
}

