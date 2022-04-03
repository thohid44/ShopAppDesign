import 'package:flutter/material.dart';
import 'package:shopapp/Shop_2/Shopping_Cart_Item.dart';

class ShoppingCart extends StatefulWidget {
  ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ShoppingCartItem()],
    );
  }
}
