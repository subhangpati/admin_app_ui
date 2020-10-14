import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/navigation_bar.dart';
import 'package:admin_app_ui/screens/EditPackage.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:admin_app_ui/components/bottomBarIcons.dart';
import 'package:admin_app_ui/screens/CreatePackage.dart';

class addRemovePackage extends StatefulWidget {
  @override
  _addRemovePackageState createState() => _addRemovePackageState();
}

class _addRemovePackageState extends State<addRemovePackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            height: 100.0,
                            width: 100.0,
                            child: Image.asset("images/smsample.jpeg")),
                        Text('Bridal Package',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                        IconButton(icon: Icon(Icons.edit), onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditPackagepage()),
                          );
                        })
                      ]),
                );
              }),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatePackage()),
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E577B) ,
                  ),
                  child: Center(child: Text('CREATE PACKAGE' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ))),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 1.0),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 60.0,
        color: kBarColor,
        child: Center(
          child: bottom_nav_icons(
              icons: Icon(
                Icons.home,
                size: 35.0,
                color: Colors.white,
              ),
              on_Press: (){
                Navigator.pop(context);
              }
          ),

        ),
      ),
    );
  }
}
