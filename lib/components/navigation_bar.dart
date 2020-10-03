import 'package:flutter/material.dart';

import '../constants.dart';


AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBarColor,
      title: Text("Admin Dashboard",
        style: TextStyle(
            fontFamily: 'Inter', fontWeight: FontWeight.bold ),),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.settings),
          onPressed: (){},)
      ],
    );
  }
