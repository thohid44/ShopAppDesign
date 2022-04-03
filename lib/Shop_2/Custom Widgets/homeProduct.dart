import 'package:flutter/material.dart';

class HomeProduct extends StatelessWidget {
  final String title;
  final String category;
  final int? discount;
  final int price;

  const HomeProduct(
      {Key? key,
      required this.title,
      required this.category,
      this.discount,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * .04,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                width: 150,
                child: Image.asset("assets/img/1.jpg"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Suit grey",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "Clothes",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "Tk. 500",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tk. 5000"),
                  Container(
                    height: 28,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(Icons.shopping_cart),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
