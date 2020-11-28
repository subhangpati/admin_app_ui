import 'package:flutter/material.dart';

import 'components/bottomBarIcons.dart';

const kBarColor = Color(0xFF2E2E2E);
const kBackgroundColor = Color(0xFFFAFAFA);

const kDefaultPadding = 20.0;

class BottomHomeNavButton extends StatelessWidget {
  const BottomHomeNavButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 1.0),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 70.0,
      color: kBarColor,
      child: Center(
        child: bottom_nav_icons(
            icons: Icon(
              Icons.home,
              size: 35.0,
              color: Colors.white,
            ),
            on_Press: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

class BottomNextUpdateContainer extends StatelessWidget {
  BottomNextUpdateContainer({this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0))),
                  child: Center(
                    child: Text(
                      'CLEAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: InkWell(
                  onTap: onPressed,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0))),
                    child: Center(
                      child: Text(
                        'NEXT',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
