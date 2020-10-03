import 'package:flutter/material.dart';

class bottom_nav_icons extends StatelessWidget {
  bottom_nav_icons({this.icons , this.on_Press});
  final Icon icons ;
  final Function on_Press ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: on_Press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          icons,
        ],),
    );
  }
}
