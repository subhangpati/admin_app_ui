import 'package:flutter/material.dart';
import 'package:admin_app_ui/constants.dart';

class ManagingEmployee extends StatefulWidget {
  @override
  _ManagingEmployeeState createState() => _ManagingEmployeeState();
}

class _ManagingEmployeeState extends State<ManagingEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), color: Colors.white, onPressed: (){
          Navigator.pop(context);
        },),
        title: Text('Settings' , style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50,
          width: 250.0,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Employee Name ',
              ),
            ),
          ),
          SizedBox(height: 50,
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Employee Number ',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 20.0,
                width: 75.0,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  shape: BoxShape.rectangle,
                  borderRadius:
                  BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Add Employee ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20.0,
                width: 75.0,
                decoration: BoxDecoration(
                  color: Color(0xFF2E577B),
                  shape: BoxShape.rectangle,
                  borderRadius:
                  BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Edit Employee",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Employees ' , style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              ListView.builder(
                itemCount: 3,
                  itemBuilder: (context , index) {
                  return Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text('Binod Sharma '),
                    ),
                  );
                  })
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomHomeNavButton(),
    );
  }
}
