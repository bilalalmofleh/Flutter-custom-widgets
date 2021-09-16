//import '../pages/clothesDetails.dart';
import 'package:ecommerce/users_pages/ShoppingCart.dart';
import 'package:ecommerce/users_pages/favoriteListPage.dart';
import 'package:ecommerce/users_pages/user_profile.dart';
import 'package:flutter/services.dart';
import '../users_pages/drees.dart';
import '../users_pages/categories.dart';
import './users_pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Tajawal",
      ),
      home: HomePage(),
      routes: {
        "Categories": (context) {
          return Categories();
        },
        "HomePage": (context) {
          return HomePage();
        },
        "Drees": (context) {
          return Drees();
        },
        "ShoppingCart": (context) {
          return ShoppingCart();
        },
        "favoriteListPage": (context) {
          return FavoriteListPage();
        },"UserProfile": (context) {
          return UserProfile();
        },
      },
    );
  }
}
