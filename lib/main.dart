import 'package:flutter/material.dart';

import 'Slider7.dart';
import 'TabBar.dart';
import 'button3.dart';
import 'columen&row1.dart';
import 'datepicker4.dart';
import 'expanded5.dart';
import 'gridview6.dart';
import 'map2_card_font_image.dart';

void main() => runApp(MyApp());
Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.redAccent, fontFamily: 'Quicksand-Bold',
        //elevatedButtonTheme:ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)))
      ),
       home: MyhomeScreen(),
       routes: {
        '/x0': (context) => MyhomeScreen(),
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
