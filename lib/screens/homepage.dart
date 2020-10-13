import 'package:admin_app_ui/components/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:admin_app_ui/components/body.dart';
import 'package:admin_app_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:admin_app_ui/components/bottomBarIcons.dart';
import 'package:admin_app_ui/screens/addRemovePackage.dart';
import 'package:admin_app_ui/screens/TimeManagement.dart';
import 'package:admin_app_ui/screens/addService.dart';
import 'package:admin_app_ui/screens/addRemoveServicesPage.dart';
import 'package:admin_app_ui/screens/AddRemoveSliders.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
            sideBarMenuItems(
              label: 'Bookings',
              imageData: 'event_note-24px.svg',
              press: () {},
            ),
            sideBarMenuItems(
              label: 'Booking Calander',
              imageData: 'date_range-24px.svg',
              press: () {},
            ),
            sideBarMenuItems(
              label: 'Add/Remove Package',
              imageData: 'box.svg',
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => addRemovePackage()));
              },
            ),
            sideBarMenuItems(
              label: 'Add/Remove Services',
              imageData: 'service.svg',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddService()));
              },
            ),
            sideBarMenuItems(
              label: 'Add/Remove Sliders',
              imageData: 'slider-tool.svg',
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddRemoveSliders()));
              },
            ),
            sideBarMenuItems(
              label: 'Time Management',
              imageData: 'clock.svg',
              press: () {},
            ),
            sideBarMenuItems(
              label: 'Logout',
              imageData: 'logout.svg',
              press: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 60.0,
        color: kBarColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            bottom_nav_icons(
              icons: Icon(
                Icons.note_add,
                size: 35.0,
                color: Colors.white,
              ),
              on_Press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addServicePage()));
              },
            ),
            bottom_nav_icons(
              icons: Icon(
                Icons.home,
                size: 35.0,
                color: Colors.white,
              ),
            ),
            bottom_nav_icons(
              icons: Icon(
                Icons.access_time,
                size: 35.0,
                color: Colors.white,
              ),
              on_Press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => timeManagement()));
              },
            ),
            bottom_nav_icons(
                icons: Icon(
              Icons.perm_identity,
              size: 35.0,
              color: Colors.white,
            ))
          ],
        ),
      ),
    );
  }
}

// below this is the code for the sidebar content or ( list )
class sideBarMenuItems extends StatelessWidget {
  sideBarMenuItems({this.label, this.imageData, this.press});
  final String label;
  final Function press;
  final String imageData;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            SvgPicture.asset('images/$imageData', width: 25.0, height: 25.0),
        title: Text(
          label,
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.bold, fontFamily: 'Inter'),
        ),
        onTap: press,
      ),
    );
  }
}
