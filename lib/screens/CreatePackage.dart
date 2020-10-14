import 'package:flutter/material.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:admin_app_ui/components/bottomBarIcons.dart';


class CreatePackage extends StatefulWidget {
  @override
  _CreatePackageState createState() => _CreatePackageState();
}

class _CreatePackageState extends State<CreatePackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
    leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: Colors.white,onPressed: (){
    Navigator.pop(context);
    }),
    title: Text('Create Package ',style: TextStyle(
    color: Colors.white,
    ),),
    backgroundColor: kBarColor,
    actions: <Widget>[
    FlatButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
    ),
    onPressed: (){},
    child: Text('SAVE' , style: TextStyle(color: Color(0xFF31AF39) , fontSize: 20),))
    ],
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(child: Text('Name ' , style: TextStyle(
                fontSize: 18.0,
              ))),
              Container(
                padding: EdgeInsets.all(5.0),
                height: 45,
                width: 250,
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'New Package ',
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
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: 150,
                width: 150,
                child: Image.asset('images/blonde.jpg'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 30.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF31AF39),
                      shape: BoxShape.rectangle,
                      borderRadius:
                      BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text(
                        "Upload",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 30.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E577B),
                    shape: BoxShape.rectangle,
                    borderRadius:
                    BorderRadius.circular(20.0),
                  ),
                  child: InkWell(
                    onTap: (){

                    },
                    child: Center(
                      child: Text(
                        "Add Category ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
