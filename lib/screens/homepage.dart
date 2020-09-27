import 'package:admin_app_ui/components/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/body.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: buildAppBar(),
          body: Body(),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: kBarColor,
                  ),
                ),
                sideBarMenuItems(label: 'Bookings', imageData: 'event_note-24px.svg', press: (){},),
                sideBarMenuItems(label: 'Booking Calander', imageData: 'date_range-24px.svg', press: (){},),
                sideBarMenuItems(label: 'Add/Remove Package', imageData: 'box.svg', press: (){},),
                sideBarMenuItems(label: 'Add/Remove Services', imageData: 'service.svg', press: (){},),
                sideBarMenuItems(label: 'Add/Remove Sliders', imageData: 'slider-tool.svg', press: (){},),
                sideBarMenuItems(label: 'Time Management', imageData: 'clock.svg', press: (){},),
                sideBarMenuItems(label: 'Logout', imageData: 'logout.svg', press: (){},),
              ],
            ),
          ),
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


// below this is the code for the sidebar content or ( list )
class sideBarMenuItems extends StatelessWidget {
  sideBarMenuItems( {this.label , this.imageData , this.press});
  final String label ;
  final Function press ;
  final String imageData ;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SvgPicture.asset('images/$imageData' , width: 25.0, height: 25.0 ),
        title: Text( label , style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Inter'

        ),
        ),
        onTap: press,
      ),
    );
  }
}

// The following is the abstracted code for the bottom nav icons:

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


