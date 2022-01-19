import 'package:flutter/material.dart';

import 'TabBar.dart';
import 'styles1.dart';
import 'Slider7.dart';

import 'button3.dart';
import 'columen&row1.dart';
import 'datepicker4.dart';
import 'expanded5.dart';
import 'gridview6.dart';
import 'map2_card_font_image.dart';

 

// ignore: must_be_immutable
class MyDrawer extends StatelessWidget {
  late String? str1;
  void selectScreen(BuildContext ctx, int x) {
    if (x == 1) {
      Navigator.of(ctx).pushNamed('/x1', 
      arguments: {
        'id': x == 1 ? 10 : 21,
        'title': x == 1 ? "info1" : "info2",
      }).then((value) => print(str1=value.toString()));
    } else {
      Navigator.of(ctx).pushReplacementNamed(
          x == 2
              ? '/x2'
              : (x == 3)
                  ? '/x3'
                  : (x == 4)
                      ? '/x4'
                      : (x == 5)
                          ? '/x5'
                          : (x==6)?'/x6':(x==0)?'/x0':'/x7',
          arguments: {
            'id': x == 1 ? 10 : 21,
            'title': x == 1 ? "info1" : "info2",
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           ListTile(
              focusColor: Colors.red,
              title: Text(
                " Tap bar",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 0);
              }),
          ListTile(
              focusColor: Colors.red,
              title: Text(
                " culomn&row",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 1);
              }),
          ListTile(
              title: Text(
                " Map card",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 2);
              }),
          ListTile(
              title: Text(
                " Buttons",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 3);
              }),
          ListTile(
              title: Text(
                " datapicker",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 4);
              }),
          ListTile(
              title: Text(
                " expanded",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 5);
              }),
          ListTile(
              title: Text(
                "gridview",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 6);
              }),
              ListTile(
              title: Text(
                "Slider",
                style: Tstyler,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                selectScreen(context, 7);
              }),
        ],
      ),
    );
  }
}

//
//
class Multiscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      
      home: MyhomeScreen(),
       routes: {
        '/': (context) => MyhomeScreen(),
        '/x1': (context) => MyhomePage(),
        '/x2': (context) => Myhomepage2(),
        '/x3': (context) => Myhomepage3(),
        '/x4': (context) => Myhomepage4(),
        '/x5': (context) => Myhomepage5(),
        '/x6': (context) => Myhomepage6(),
        '/x7':(context)  =>Myslider(),
      },
      
    );
  }
}