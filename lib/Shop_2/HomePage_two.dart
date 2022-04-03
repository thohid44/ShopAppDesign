import 'package:flutter/material.dart';
import 'package:shopapp/Shop_2/Category_Products.dart';
import 'package:shopapp/Shop_2/Custom%20Widgets/Best_Sell_Widget.dart';
import 'package:shopapp/Shop_2/Custom%20Widgets/Product_Widget.dart';
import 'package:shopapp/Shop_2/Custom%20Widgets/categoriy_items.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
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
              Container(
                height: 30,
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryItems(
                      title: "Clothes",
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Category_Products(
                                      categoryName: "Clothes",
                                    )));
                      },
                      child: CategoryItems(
                        title: "Toys",
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    CategoryItems(
                      title: "Shooes",
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    CategoryItems(
                      title: "Foods",
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    CategoryItems(
                      title: "Cars",
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "On sale",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 240,
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductWidget(
                        title: "Suit grey",
                        category: "Clothes",
                        discount: 500,
                        price: 5000),
                    ProductWidget(
                        title: "Suit grey",
                        category: "Clothes",
                        discount: 500,
                        price: 5000),
                    ProductWidget(
                        title: "Suit grey",
                        category: "Clothes",
                        discount: 500,
                        price: 5000),
                    ProductWidget(
                        title: "Suit grey",
                        category: "Clothes",
                        discount: 500,
                        price: 5000),
                    ProductWidget(
                        title: "Suit grey",
                        category: "Clothes",
                        discount: 500,
                        price: 5000),
                  ],
                ),
              ),

              // Best Sales
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Best sales",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 160,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Best_Sell_Widget(),
                    Best_Sell_Widget(),
                    Best_Sell_Widget()
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.star, color: Colors.black), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.black), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black), label: "")
        ]),
      ),
    );
  }
}
