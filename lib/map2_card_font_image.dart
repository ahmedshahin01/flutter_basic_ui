import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_par/drawer_multiScreens.dart';
import 'package:flutter_app_par/info.dart';
import 'package:intl/intl.dart';

import 'package:flutter_app_par/styles1.dart';

// ignore: must_be_immutable
class Myhomepage2 extends StatelessWidget {
    static const routeName='/x2';

  List<Info> li = [
    Info(name: "ahmed1", height: 170, date: DateTime.now()),
    Info(name: "ahmed2", height: 180, date: DateTime.now()),
    Info(name: "ahmed3", height: 190, date: DateTime.now()),
    Info(name: "ahmed4", height: 160, date: DateTime.now()),
    Info(name: "ahmed5", height: 150, date: DateTime.now()),
    Info(name: "ahmed6", height: 200, date: DateTime.now()),
    Info(name: "ahmed7", height: 210, date: DateTime.now()),
  ];
  void x(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ListView.builder(
            itemCount: li.length,
            itemBuilder: (ctx, indexx) {
              return Container(
                color: Theme.of(ctx).primaryColor,
                padding: EdgeInsets.all(8),
                child: Card(
                  color: Colors.deepPurple,
                  //shadowColor: Colors.greenAccent,
                  elevation: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              li[indexx].name,
                              style: Tstyler,
                            ),
                            Text(
                              li[indexx].height.toString(),
                              style: Tstyleg,
                            ),
                          ],
                        ),
                        Text(
                          "${DateFormat().format(li[indexx].date)}",
                          style: Tstyleg,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'flutter app',
          style: Tstyler,
        ),
      ),
      drawer: MyDrawer(),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
        
          children: [
              Image.network(
              "https://media.istockphoto.com/photos/wind-farm-at-sunset-picture-id1301243910",
              fit: BoxFit.cover,width: 400,height: 400,
            ),
          Image.asset("assets/image/photo1.jpg",
          fit: BoxFit.fill,height: 400,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()  => x(context),
      ),
    );
  }
}
