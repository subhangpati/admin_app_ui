import 'package:flutter/material.dart';
import 'package:square/square.dart';
import 'package:admin_app_ui/constants.dart';


class SettingsPage extends StatelessWidget {
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
          ListTile(
            title: Text('Manage Your Employees', style: TextStyle(
                color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
            onTap: null,
          ),
          ListTile(
            title: Text('Stop Sessions ' ,  style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),
            ),
            subtitle: Text('All the current sessions will be postponed'),
            trailing: SquareSwitch(
              inactiveColor: Colors.white,
              activeColor: Colors.red,
              onChange: null
            ),
          ),
          ListTile(
            title: Text('Account Settings ', style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: null,
          ),
        ],
      ),
      bottomNavigationBar: BottomHomeNavButton(),
    );
  }
}
