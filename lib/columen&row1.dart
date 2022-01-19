 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_app_par/drawer.dart';

import 'styles1.dart';

class MyhomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  String page1="page1";

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map < String,Object>  ;
    
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.yellow,
        title: Text(
          "app par TitelflutterApp",
          style: Tstyleg,
        ),
      ),
      //drawer: MyDrawer(),
      body: Container(
        color: Colors.redAccent,
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                width: 800,
                height: 800,
                color: Colors.greenAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "${routeArg['id']}",
                          style: Tstyleg,
                        ),
                        Text(
                           routeArg['title'].toString(),
                          style: Tstyler,
                        ),
                        Text(
                          "txt3",
                          style: Tstyleg,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "txt1",
                          style: Tstyleg,
                        ),
                        Text(
                          "txt2",
                          style: Tstyler,
                        ),
                        Text(
                          "txt3",
                          style: Tstyleg,
                        )
                      ],
                    ),
                  ],
                )),
            /*Container(
              width: 500,
              height: 500,
              color: Colors.blueAccent,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.yellowAccent,
              
            ),
          */
          ],
        ),
        /*
        //height: double.infinity,
        margin: EdgeInsets.all(15),
        color: Colors.redAccent,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: myText("aaa",Tstyle),
            ),
            Padding(
              
              padding: const EdgeInsets.only(left: 1000),
              child: myText("ddd",Tstyle2)
            ),
          ],
        ),
      */
      ),
    
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.delete),
      onPressed: (){
        Navigator.of(context).pop(page1);
      },
    ),);
  }
}
