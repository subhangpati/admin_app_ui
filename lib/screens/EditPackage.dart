import 'package:flutter/material.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:admin_app_ui/components/bottomBarIcons.dart';


class EditPackagepage extends StatefulWidget {
  @override
  _EditPackagepageState createState() => _EditPackagepageState();
}

class _EditPackagepageState extends State<EditPackagepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: Colors.white,onPressed: (){
          Navigator.pop(context);
        }),
        title: Text('Edit Package ',style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: kBarColor,
        actions: <Widget>[
          FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              onPressed: (){},
              child: Text('UPDATE' , style: TextStyle(color: Colors.white , fontSize: 20),))
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(top: 8.0 , right: 30.0 , left: 30.0 , bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 150,
                    width: 150,
                  child: Image.asset('images/blonde.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF8B1515),
                        shape: BoxShape.rectangle,
                        borderRadius:
                        BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Remove",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 30.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF2E577B),
                        shape: BoxShape.rectangle,
                        borderRadius:
                        BorderRadius.circular(20.0),
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
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
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
                )
              ],
            ),
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
            itemCount: 4,
              itemBuilder: (context , index ) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  height: 50,
                  width: 200,
                  child: ListTile(
                    leading: Text('Category 1 '),
                    trailing: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.delete_outline,
                        size: 24,
                      ),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              );
              }),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: InkWell(
                onTap: null,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E577B) ,
                  ),
                  child: Center(child: Text('BROWSE' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ))),
                ),
              ),
            ),
          )
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
