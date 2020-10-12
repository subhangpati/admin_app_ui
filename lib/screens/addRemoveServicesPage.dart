import 'package:admin_app_ui/components/bottomBarIcons.dart';
import 'package:flutter/material.dart';
import 'package:admin_app_ui/constants.dart';



class AddService extends StatefulWidget {
  @override
  _AddServiceState createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2E577B),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    'Packages : ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2E577B),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    'Catagories : ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10.0),
                      height: 100.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              left: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 1.0
                              )
                          )
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                height: 100.0,
                                width: 100.0,
                                child: Image.asset("images/smsample.jpeg")),
                            Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('Service Name '),
                                Text('Cost Price '),
                                Text('Time '),
                              ],
                            ),
                            SizedBox(height: 100.0),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    height: 20.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF31AF39),
                                      shape: BoxShape.rectangle,
                                      borderRadius:
                                      BorderRadius.circular(20.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Shown",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
                    );
                  }),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF2E577B),
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Center(
                            child: Text(
                          'ADD SERVICES',
                          style: TextStyle(color: Colors.white),
                        )),
                      )),
                ),
              ),
            ],
          ),

        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
          height: 60.0,
          color: kBarColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              bottom_nav_icons(icons: Icon(Icons.home , size: 35.0, color: Colors.white,) , on_Press: (){
                Navigator.pop(context);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
