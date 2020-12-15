import 'package:admin_app_ui/model/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  String subPackage;
  String packages;
  //FirestoreService({this.packages, this.subPackage});

  //Stream of services
  Stream<QuerySnapshot> getStreamServices() {
    return FirebaseFirestore.instance.collection('services').snapshots();
  }

  // Stream of Packages
  Stream<QuerySnapshot> getStreamPackage(String package) {
    return FirebaseFirestore.instance
        .collection('/services/$package/$subPackage')
        .snapshots();
  }

  //GET PACKAGES
  Stream<List<Product>> getProduct(String package) {
    return FirebaseFirestore.instance
        .collection('/services/$package/$subPackage')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((document) => Product.fromFirestore(document.data()))
            .toList());
  }

  //DELETE PACKAGE
  Future<void> removeProduct({String title}) {
    return FirebaseFirestore.instance
        .collection('/services/$packages/$subPackage')
        .doc(title)
        .delete();
  }

  // ADD PACKAGE
  Future<void> saveProduct({Product product}) {
    return FirebaseFirestore.instance
        .collection('services/$packages/$subPackage')
        .doc(product.title)
        .set(product.toMap());
  }
}
