 
 import 'package:flutter/material.dart'; 
import 'package:flutter_app_par/button3.dart';
import 'package:flutter_app_par/datepicker4.dart';
import 'package:flutter_app_par/drawer_multiScreens.dart'; 
import 'package:flutter_app_par/styles1.dart';



class MyhomeScreen extends StatefulWidget {
  //var xn=[1,2,3,4,5,6];

  @override
  _MyhomeScreenState createState() => _MyhomeScreenState();
}

class _MyhomeScreenState extends State<MyhomeScreen> {
  

  
  final List<Map<String,Widget>> _psges = [
    {
      'page': Myhomepage3(),
      'title': Text("Buttons"),
    },
    {
      'page': Myhomepage4(),
      'title':Text( "datepicker"),
    }
  ];
    

  int _selectPageindex = 0;
  void _x1(int index) {
    setState(() {
      _selectPageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _psges[_selectPageindex]['title'].toString(),
            style: Tstyler,
          ),
        ),
        drawerScrimColor: Colors.redAccent.withOpacity(.5),
        drawer: MyDrawer(),
        body: _psges[_selectPageindex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightGreenAccent,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          currentIndex: _selectPageindex,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.shifting,
          onTap: _x1,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.lightGreenAccent,
                icon: Icon(Icons.category),
                label: ("buttons")),
            BottomNavigationBarItem(
                backgroundColor: Colors.lightGreenAccent,
                icon: Icon(Icons.star),
                label:("datepicker")),
          ],
        ),
      ),
    );
  }
}
