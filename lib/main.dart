import 'package:flutter/material.dart';
import 'package:shopapp/Shop_2/Category_Products.dart';
import 'package:shopapp/Shop_2/Custom%20Widgets/Custom_Bottom.dart';
import 'package:shopapp/Shop_2/Favorite.dart';
import 'package:shopapp/Shop_2/HomePage_two.dart';
import 'package:shopapp/Shop_2/Shopping_Cart.dart';
import 'package:shopapp/view/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //initialRoute: '/',
      // routes: {
      //   '/': (context) => HomePageTwo(),
      //   "category": (context) => const Category_Products(
      //         categoryName: null,
      //       ),
      // },

      home: CustomNavbar(),
    );
  }
}
