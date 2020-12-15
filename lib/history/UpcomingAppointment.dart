import 'package:admin_app_ui/components/navigation_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'DateTimeQueryPage.dart';

class UpcomingAppointment extends StatefulWidget {
  @override
  _UpcomingAppointmentState createState() => _UpcomingAppointmentState();
}

class _UpcomingAppointmentState extends State<UpcomingAppointment> {
  QueryFirebaseMethod upcoming;

  @override
  Widget build(BuildContext context) {
    upcoming = Provider.of<QueryFirebaseMethod>(context);
    return Scaffold(
      appBar: buildAppBar('Today'),
      body: FutureBuilder(
          future: upcoming.upcomingEvents(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Scaffold(body: Center(child: CircularProgressIndicator()));
            }
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot order = snapshot.data.docs[index];
                String uidOfSelectedCustomer = order['current_userID'];
                Stream<DocumentSnapshot> dataOfUser =
                    upcoming.getCurrentCustomerData(uidOfSelectedCustomer);
                return AppointmentCard(
                  userStream: dataOfUser,
                  title: order['title'],
                  date: order['event_date'],
                  time: order['selected_time'],
                  price: order['totalAmount'].toString(),
                  paymentStatus: order['PaymentStatus'],
                );
              },
            );
          }),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String title;
  final String paymentStatus;
  final String date;
  final String time;
  final String price;
  final String address;
  final String phoneNumber;
  final String customerName;
  final Stream<DocumentSnapshot> userStream;

  AppointmentCard(
      {this.title,
      this.paymentStatus,
      this.date,
      this.time,
      this.price,
      this.address,
      this.customerName,
      this.userStream,
      this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [];
    titles = title.split('/').toList();
    return StreamBuilder(
        stream: userStream,
        builder: (context, snapshot) {
          DocumentSnapshot customerData = snapshot.data;
          if (snapshot.data == null) {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
          return InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0)), //this right here
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                customerData['fullName'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                customerData['address'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                customerData['phoneNo'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Total ₹$price',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: RaisedButton(
                                    onPressed: () {
                                      String number = customerData['phoneNo'];
                                      print(number);
                                      launch(('tel://$number'));
                                    },
                                    child: Text(
                                      'Call',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    color: const Color(0xFF1BC0C5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            customerData['fullName'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.height / 3,
                            child: ListView.builder(
                                //shrinkWrap: true,
                                itemCount: titles.length,
                                itemBuilder: (context, index) {
                                  return Text(
                                    titles[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  );
                                }),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, right: 20, left: 20),
                            decoration: BoxDecoration(
                                color: paymentStatus == 'PAID'
                                    ? Colors.green
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              paymentStatus,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(date),
                          Text('$time:00'),
                          Text('₹ $price'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
