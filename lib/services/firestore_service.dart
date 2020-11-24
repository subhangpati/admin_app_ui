import 'package:admin_app_ui/model/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  String collection;
  String PackageName;


  //GET PACKAGES
  Stream<List<Product>> getProduct(){
    return FirebaseFirestore.instance.collection( "services/collection/PackageName").snapshots().map((snapshot) => snapshot.docs.map((document) => Product.fromFirestore(document.data())).toList());
  }

  //DELETE PACKAGE
  Future<void> removeProduct(String title){
    return _db.collection(CollectionName).doc(title).delete();
  }


  // ADD PACKAGE
  Future<void> saveProduct(Product product){
    return _db.collection(CollectionName).doc(product.title).set(product.toMap());
  }

}
