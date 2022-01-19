import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_par/drawer_multiScreens.dart';
import 'package:flutter_app_par/styles1.dart';
 
class Myhomepage5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Expandedstate();
}

class _Expandedstate extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expanded',
          style: Tstyleg,
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset("assets/image/photo1.jpg")
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.amber,
                child: Text("2"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.lightBlue,
                child: Text("3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
