import 'package:flutter/material.dart';

class Item {
  String title, details;
  int currentPrice, previousPrice, time;
  Item(
      {this.title,
      this.details,
      this.previousPrice,
      this.currentPrice,
      this.time});
}

class EditItems extends ChangeNotifier {
  Map<dynamic, Item> _item = {};

  Map<dynamic, Item> get items {
    return _item;
  }

  void printingShit() {
    print(_item);
  }

  void editItems({
    String title,
    String details,
    int currentPrice,
    int previousPrice,
    int time,
  }) {
    if (_item.containsKey(title)) {
      _item.update(
          (title),
          (existingItem) => Item(
                title: existingItem.title,
                currentPrice: existingItem.currentPrice,
                previousPrice: existingItem.previousPrice,
              ));
    } else {
      _item.putIfAbsent(
        title,
        () => Item(
          title: title,
          previousPrice: previousPrice,
          currentPrice: currentPrice,
        ),
      );
    }
    notifyListeners();
  }
}
