import 'package:flutter/material.dart';
import 'package:shopapp/Shop_2/Custom%20Widgets/Product_Widget.dart';

class GridProduct extends StatelessWidget {
  const GridProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
          ProductWidget(title: "Suit", category: "Clothes", price: 5000),
        ],
      ),
    );
  }
}
