import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar(String heading) {
  return AppBar(
    backgroundColor: kBarColor,
    title: Text(
      heading,
      style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.settings),
        onPressed: () {},
      )
    ],
  );
}
