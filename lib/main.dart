import 'package:admin_app_ui/AdvanceScreens/Services.dart';
import 'package:admin_app_ui/model/product_model.dart';
import 'package:admin_app_ui/productProvider/EditItems.dart';
import 'package:admin_app_ui/services/firestore_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'productProvider/product_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FirestoreService>(
          create: (context) => FirestoreService(),
        ),
        ChangeNotifierProvider(create: (context) => EditItems()),
        ChangeNotifierProvider(create: (context) => Product()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        // StreamProvider(create: (context)=> FirestoreService().getStreamServices()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            // primaryColor: Theme.of(context).primaryColor.apply(primar)
            ),
        home: Services(),
      ),
    );
  }
}
