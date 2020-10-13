import 'package:flutter/material.dart';

class EditSliderPage extends StatefulWidget {
  @override
  _EditSliderPageState createState() => _EditSliderPageState();
}

class _EditSliderPageState extends State<EditSliderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 5.0, left: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 250.0,
                width: double.infinity,
                child: Column(

                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Slider Text'),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      height: 220,
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('images/smsample.jpeg'),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 20.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF2E577B),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            "Edit ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height:10.0
                      ),
                      Container(
                        height: 20.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF31AF39),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            "Update ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    height: 50.0,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
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
                            child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(color: Colors.green),
                            child: Center(
                              child: Text(
                                'UPDATE',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 25.0),
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
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
