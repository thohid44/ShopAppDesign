import 'package:flutter/material.dart';
import 'package:shopapp/Shop_2/favorite_item.dart';

import 'Custom Widgets/Best_Sell_Widget.dart';

class Favorite extends StatefulWidget {
  Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 35,
                child: Icon(
                  Icons.menu,
                  size: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black)),
              ),
              const Text(
                "Favorite ",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Container(
                height: 35,
                width: 35,
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
        FavoriteItem()
      ],
    ));
  }
}
