import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_par/drawer_multiScreens.dart';
 import 'package:flutter_app_par/styles1.dart';

class Myhomepage3 extends StatelessWidget {
  /*final String st1 ;
  Myhomepage3(this.st1);*/
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'button test',
          style: Tstyler,
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: Text("st1 ")),
            ElevatedButton(onPressed: () {}, child: Text("RaisedButton ")),
            OutlinedButton(onPressed: () {}, child: Text("OutlineButton ")),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.nights_stay),
                label: Text("textButton.icon")),
            ElevatedButton.icon(
              style:bstyle1bw,
                onPressed: () {},
                icon: Icon(Icons.nights_stay),
                label: Text("ElevatedButton.icon")),
            OutlinedButton.icon(
              style: bstyle2rb,
                onPressed: () {},
                icon: Icon(Icons.nights_stay,
                color: Colors.blue,),
                label: Text("OutlinedButton.icon")),
          ],
        ),
      ),
    );
  }
}
