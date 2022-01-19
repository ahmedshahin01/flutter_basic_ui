import 'package:flutter/material.dart';
import 'package:flutter_app_par/drawer_multiScreens.dart';
import 'package:flutter_app_par/styles1.dart';

class Myhomepage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GridviewTest',
          style: Tstyler,
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            infor("title1", Colors.greenAccent,Colors.red),
            Image.asset("assets/image/photo1.jpg"),
            Image.asset("assets/image/photo1.jpg"),
            infor("title1", Colors.pink,Colors.red),
            infor("title1", Colors.blueAccent,Colors.red),
            Image.asset("assets/image/photo1.jpg"),
            Image.asset("assets/image/photo1.jpg"),
            infor("title1", Colors.blueGrey,Colors.red),
            infor("title1", Colors.yellowAccent,Colors.red),
            Image.asset("assets/image/photo1.jpg"),
          ],
        ),
      ),
    );
  }
}
