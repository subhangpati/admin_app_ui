import 'package:admin_app_ui/productProvider/EditItems.dart';
import 'package:admin_app_ui/screens/addService.dart';
import 'package:admin_app_ui/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

List<String> subPackageHeading = [
  'Best Deal',
  'Pre Bridal Package',
  'Premium Package',
  'Facial+Wax Combo'
];
FirestoreService packageData;
EditItems editItem;
double currentPageValue = 0;
int selectedIndex = 0;
PageController _pageController = PageController(
  initialPage: 0,
);

class ClassicPackage extends StatefulWidget {
  @override
  _ClassicPackageState createState() => _ClassicPackageState();
}

class _ClassicPackageState extends State<ClassicPackage> {
  @override
  Widget build(BuildContext context) {
    packageData = Provider.of<FirestoreService>(context);
    editItem = Provider.of<EditItems>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Color(0xffFFFAFA),
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          'CLASSIC PACKAGE',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => addServicePage()));
            },
          ),
        ],
      ),
      body: StreamBuilder(
        stream: packageData.getStreamPackage('classic'),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 25,
                    child: ListView.builder(
                      itemCount: subPackageHeading.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(index,
                                curve: Curves.decelerate,
                                duration: Duration(milliseconds: 300));
                            setState(() {
                              selectedIndex = index;
                              switchPackage();
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text(
                                  subPackageHeading[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: selectedIndex == index ? 17 : 15,
                                    color: selectedIndex == index
                                        ? Color(0xffff7d85)
                                        : Colors.black87,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  height: 4,
                                  width: 35,
                                  color: selectedIndex == index
                                      ? Color(0xffff7d85)
                                      : Colors.transparent,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (BuildContext context, index) {
                          DocumentSnapshot package =
                              snapshot.data.documents[index];
                          return Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.all(8),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3,
                                              child: Image(
                                                image: NetworkImage(
                                                    package['img']),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  3,
                                              padding: EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  bottom: 10,
                                                  right: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    package['title'],
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontFamily: 'inter',
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        '₹ ${package['currentPrice']}',
                                                        style: TextStyle(
                                                            fontSize: 15),
                                                      ),
                                                      Text(
                                                        '₹ ${package['previousPrice']}',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                      '${package['time']} min'),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: RaisedButton(
                                                color: Color(0xffff7d85),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                onPressed: () {
                                                  productSelected(
                                                    title: package['title'],
                                                    currentPrice:
                                                        package['currentPrice'],
                                                    previousPrice: package[
                                                        'previousPrice'],
                                                    time: package['time'],
                                                    details: package['details'],
                                                  );
                                                },
                                                child: Text("Edit"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // second half of card
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Package Details',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            // SizedBox(
                                            //   height: 10,
                                            // ),
                                            Text(
                                              package['details'],
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'inter',
                                                height: 1.3,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Add new Packages'),
        icon: Icon(FontAwesomeIcons.plus),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void productSelected({
    String title,
    details,
    int currentPrice,
    previousPrice,
    time,
  }) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Confirm"),
            content: const Text("Do you want to Edit this Item?"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    editItem.printingShit();
                    Navigator.of(context).pop(true);
                    print(title);
                    editItem.editItems(
                      title: title,
                      details: details,
                      time: time,
                      currentPrice: currentPrice,
                      previousPrice: previousPrice,
                    );
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Thank you'),
                            content: Text('$title added to cart'),
                            actions: [
                              FlatButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(false),
                                  child: Text('OK'))
                            ],
                          );
                        });
                  },
                  child: const Text("Yes")),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text("CANCEL"),
              ),
            ],
          );
        });
  }

  void switchPackage() {
    switch (selectedIndex) {
      case 0:
        packageData.subPackage = 'classic';
        FirestoreService().subPackage = 'classic';
        break;
      case 1:
        packageData.subPackage = 'pre-BridalPackages';
        FirestoreService().subPackage = 'pre-BridalPackages';
        break;
      case 2:
        packageData.subPackage = 'premiumPackages';
        FirestoreService().subPackage = 'premiumPackages';
        break;
      case 3:
        packageData.subPackage = 'FacialWaxingCombo';
        FirestoreService().subPackage = 'FacialWaxingCombo';
        break;
    }
  }
}
