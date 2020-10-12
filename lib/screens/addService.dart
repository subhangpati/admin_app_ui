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
                height: MediaQuery.of(context).size.height / 4,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        ],
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Column(
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
                          ListTile(
                            title: Text('Added'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 140.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Text(
                            'CLEAR',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
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
                            decoration: BoxDecoration(color: Colors.green),
                            child: Text(
                              'NEXT',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
