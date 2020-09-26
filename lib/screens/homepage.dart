import 'package:admin_app_ui/components/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/body.dart';
import 'package:admin_app_ui/constants.dart';


class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: buildAppBar(),
          body: Body(),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
            height: 60.0,
            color: kBarColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              bottom_nav_icons(icons: Icon(Icons.note_add , size: 35.0, color: Colors.white,)),
              bottom_nav_icons(icons: Icon(Icons.home , size: 35.0, color: Colors.white,)),
              bottom_nav_icons(icons: Icon(Icons.access_time , size: 35.0, color: Colors.white,)),
              bottom_nav_icons(icons: Icon(Icons.perm_identity , size: 35.0, color: Colors.white,))

        ],),
      ),
    );
  }

}

class bottom_nav_icons extends StatelessWidget {
  bottom_nav_icons({this.icons , this.on_Press});
  final Icon icons ;
  final Function on_Press ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        icons,
            ],),
    );
  }
}