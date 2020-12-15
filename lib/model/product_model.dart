class Product {
  final String details;
  final String title;
  final String currentPrice;
  final String previousPrice;
  final String time;

  Product(
      {this.details,
      this.title,
      this.currentPrice,
      this.previousPrice,
      this.time});

  Map<String, dynamic> toMap() {
    return {
      'details': details,
      'title': title,
      'currentPrice': currentPrice,
      'previousPrice': previousPrice,
      'time': time
    };
  }

  Product.fromFirestore(Map<String, dynamic> firestore)
      : details = firestore['details'],
        title = firestore['title'],
        previousPrice = firestore['previousPrice'],
        time = firestore['time'],
        currentPrice = firestore['currentPrice'];
}
