import 'package:admin_app_ui/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Product extends ChangeNotifier{
  final firestoreService = FirestoreService();

  String _title ;
  String _details;
  int _currentPrice;
  int _previousPrice;
  int _time;

  //Getters

  String get title=> _title;
  String get details => _details;
  int get currentPrice => _currentPrice;
  int get previousPrice => _previousPrice;
  int get time => _time;

  //setters
  changeTitle(String value){
    _title : value;
    notifyListeners();
  }

  changeDetails(String value){
    _details : value;
    notifyListeners();
  }

  changePrice(String value){
    _currentPrice : int.parse(value);
    notifyListeners();
  }

  changePreviousPrice(String value){
    _previousPrice : int.parse(value);
    notifyListeners();
  }

  changeTime(String value){
    _time : int.parse(value);
    notifyListeners();
  }
}