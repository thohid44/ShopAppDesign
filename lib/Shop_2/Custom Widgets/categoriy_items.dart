import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  String title;
  CategoryItems({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1)),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      )),
    );
  }
}
