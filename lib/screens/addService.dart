import 'package:admin_app_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/navigation_bar.dart';

// ignore: camel_case_types
class addServicePage extends StatefulWidget {
  @override
  _addServicePageState createState() => _addServicePageState();
}

// ignore: camel_case_types
class _addServicePageState extends State<addServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Price',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Discount',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Duration',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 1.0,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextContainer(),
                          TextContainer(),
                          TextContainer(),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            height: 45,
                            width: 275,
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Enter Name',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    hintText: 'Enter a search term'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2E577B),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: InkWell(
                  child: ListTile(
                    title: Text('Added : '),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  ),
                ),
              ),
              SizedBox(height: 275.0),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 50.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(topLeft:  Radius.circular(5.0), bottomLeft: Radius.circular(5.0))
                            ),
                            child: Center(
                              child: Text(
                                'CLEAR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(color: Colors.green,
                                  borderRadius: BorderRadius.only(topRight:  Radius.circular(5.0), bottomRight: Radius.circular(5.0))
                              ),

                              child: Center(
                                child: Text(
                                  'NEXT',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25.0),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomHomeNavButton(),
    );
  }
}

class TextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: 45,
      width: 275,
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              labelText: 'Enter Name',
              border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
              ),
              hintText: 'Enter a search term'),
        ),
      ),
    );
  }
}
