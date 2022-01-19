import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app_par/drawer_multiScreens.dart';
import 'package:flutter_app_par/styles1.dart';

class Myslider extends StatefulWidget {
  @override
  _MysliderState createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
  double _value = 0.0;
  double _value2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliderPage"),
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Transform.rotate(
                angle: _value * (pi / 180),
                child: Container(
                  color: Colors.blueAccent,
                  width: 200,
                  height: 200,
                ),
              ),
              Transform.scale(
                scale: _value2,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
          Text(
            'value${(_value).round()}',
            style: Tstyler,
          ),
          
          Slider(
            value: _value,
            onChanged: (double val) => setState(() => _value = val),
            min: 0,
            max: 360,
            divisions: 12,
            label: "val",
            activeColor: Colors.red,
            inactiveColor: Colors.teal,
          ),
          Text(
            'value${(_value2).round()}',
            style: Tstyler,
          ),
          Slider(
            value: _value2,
            onChanged: (double val) => setState(() => _value2 = val),
            min: 0,
            max: 2,
            divisions: 10,
            label: "val",
            activeColor: Colors.red,
            inactiveColor: Colors.tealAccent,
          ),
        ],
      ),
    );
  }
}
