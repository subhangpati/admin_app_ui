import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/navigation_bar.dart';

class addServicePage extends StatefulWidget {
  @override
  _addServicePageState createState() => _addServicePageState();
}

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
                            height: 50,
                            width: 300,
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
                        ],
                      ),
                      SizedBox(
                        height: 14.0,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: ListTile(
                          title: Text('Added'),
                        ),
                      ),
                    ],
                  ),
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
      height: 50,
      width: 300,
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
