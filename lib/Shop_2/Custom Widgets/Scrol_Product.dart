import 'package:flutter/material.dart';

class ScrolProduct extends StatelessWidget {
  const ScrolProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(right: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 8),
        child: Column(
          children: [
            Container(
              width: 160.0,
              height: 150,
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 12.0, right: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage('assets/img/1.jpg'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
