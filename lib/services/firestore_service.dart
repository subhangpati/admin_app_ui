import 'package:admin_app_ui/model/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FirestoreService with ChangeNotifier {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  String subPackage;
  FirestoreService({this.subPackage});



  //Stream of services
  Stream<QuerySnapshot> getStreamServices() {
    return FirebaseFirestore.instance.collection('services').snapshots();
  }

  //Stream of packages.
  Stream<QuerySnapshot> getStreamPackage(String package) {
    return FirebaseFirestore.instance
        .collection('/services/$package/$subPackage')
        .snapshots();
  }

  //GET PACKAGES
  Stream<List<Product>> getProduct(){
    return FirebaseFirestore.instance.collection("services/collection/PackageName").snapshots().map((snapshot) => snapshot.docs.map((document) => Product.fromFirestore(document.data())).toList());
  }

  //DELETE PACKAGE
  Future<void> removeProduct(String title){
    return _db.collection("services/collection/PackageName").doc(title).delete();
  }


  //ADD PACKAGE
  Future<void> saveProduct(Product product){
    return _db.collection("services/$subPackage").doc(product.title).set(product.toMap());
  }

}