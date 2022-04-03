import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * .43,
          height: MediaQuery.of(context).size.height * .43,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  child: Image.asset("assets/img/1.jpg"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Stobary",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(
                  height: 5,
                ),
                const Text("Excotica",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 16)),
                const SizedBox(
                  height: 10,
                ),
                Text("Tk. 100",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(
                  height: 10,
                ),
                Text("10 gms",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Container(
                          child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "ADD",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 10,
            right: 10,
            child: IconButton(
                onPressed: () {
                  print("Add to wishlist");
                },
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ))),
      ],
    );
  }
}
