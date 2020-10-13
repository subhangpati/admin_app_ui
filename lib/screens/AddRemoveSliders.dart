import 'package:flutter/material.dart';
import 'package:admin_app_ui/screens/EditSlider.dart';

class AddRemoveSliders extends StatefulWidget {
  @override
  _AddRemoveSlidersState createState() => _AddRemoveSlidersState();
}

class _AddRemoveSlidersState extends State<AddRemoveSliders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 2.0, right: 2.0),
        child: Container(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditSliderPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: AssetImage('images/salon.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      )),
      floatingActionButton: new FloatingActionButton(
          elevation: 0.0,
          mini: true,
          child: new Icon(Icons.add),
          backgroundColor: new Color(0xFF2E2E2E),
          onPressed: () {}),
    );
  }
}
