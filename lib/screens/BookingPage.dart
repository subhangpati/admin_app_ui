import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/navigation_bar.dart';


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
        itemCount: 2,                      // items.length
        itemBuilder: (context, index) {
          return ListTile(
              leading: GestureDetector(
                onTap: (){},
                child: Container(
                  width: double.infinity ,
                  height: 180.0 ,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Booking No : 1234' , style: TextStyle(
                                fontSize: 14.0,
                              ),),
                              Container(
                                padding: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                child: Text("Paid"),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[

                              Text("Barkha Bro " , style: TextStyle(
                                fontSize: 25.0,
                              ),),
                          ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text('Date ' , style: TextStyle(
                                fontSize: 25.0 ,
                              ),),
                              Text('Time ' , style: TextStyle(
                                fontSize: 25.0 ,
                              ),),
                              Text('Amount' , style: TextStyle(
                                fontSize: 25.0 ,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
        },
      ),
    );
  }
}
