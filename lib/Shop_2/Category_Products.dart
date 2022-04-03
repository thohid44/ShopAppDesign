import 'package:flutter/material.dart';
import 'package:shopapp/Shop_2/Custom%20Widgets/Product_Widget.dart';
import 'package:shopapp/Shop_2/GridProduct.dart';

class Category_Products extends StatefulWidget {
  final categoryName;
  const Category_Products({Key? key, required this.categoryName})
      : super(key: key);

  @override
  State<Category_Products> createState() => _Category_ProductsState();
}

class _Category_ProductsState extends State<Category_Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                width: 30,
                child: Icon(
                  Icons.menu,
                  size: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black)),
              ),
              const Text(
                "Home Page",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Container(
                height: 30,
                width: 30,
                child: Icon(
                  Icons.notifications,
                  size: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 45,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: const TextStyle(
                        fontSize: 15,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                height: 30,
                width: 30,
                child: const Icon(
                  Icons.filter_list,
                  size: 20,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const GridProduct()
      ],
    ));
  }
}
