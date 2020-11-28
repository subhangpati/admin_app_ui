import 'package:admin_app_ui/constants.dart';
import 'package:admin_app_ui/model/product_model.dart';
import 'package:admin_app_ui/productProvider/EditItems.dart';
import 'package:admin_app_ui/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../productProvider/product_provider.dart';

EditItems editItem;
String value1;

// ignore: camel_case_types
class addServicePage extends StatefulWidget {
  @override
  _addServicePageState createState() => _addServicePageState();
}

final _titleController = TextEditingController();

// ignore: camel_case_types
class _addServicePageState extends State<addServicePage> {
  @override
  void initState() {
    _titleController.text = '';
    super.initState();
  }

  final firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
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
          'ADD / EDIT PACKAGES',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 3 / 5,
                      child: TextFormField(
                        controller: _titleController,
                        onSaved: (value){
                          ProductProvider().changeTitle(value: _titleController.text);
                          print(_titleController.text);
                        },
                        // onChanged: (value) {
                        //   value1 = value;
                        //   print('$value');
                        // },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 3 / 5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current Price',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 3 / 5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Previous Price',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 3 / 5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 3 / 5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  ProductProvider().saveProduct();
                  var newProduct = Product(
                      title: _titleController.text,
                      time: '',
                      details: 'details',
                      currentPrice: '',
                      previousPrice: '');
                  firestoreService.saveProduct(product: newProduct);
                },
                child: Text('Send Data'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomHomeNavButton(),
    );
  }
}
