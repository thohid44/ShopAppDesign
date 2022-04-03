import 'package:flutter/material.dart';

class ShoppingCartItem extends StatefulWidget {
  const ShoppingCartItem({Key? key}) : super(key: key);

  @override
  State<ShoppingCartItem> createState() => _ShoppingCartItemState();
}

class _ShoppingCartItemState extends State<ShoppingCartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset("assets/img/1.jpg"),
                      ),
                      Column(
                        children: const [
                          Text(
                            "Stobary",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Text(
                            "Stobary",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
