import 'package:flutter/material.dart';

ButtonStyle bstyle1bw = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.black),
  foregroundColor: MaterialStateProperty.all(Colors.white),
  padding: MaterialStateProperty.all(EdgeInsets.all(18)),
);
ButtonStyle bstyle2rb = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.red),
  foregroundColor: MaterialStateProperty.all(Colors.black),
  padding: MaterialStateProperty.all(EdgeInsets.all(18)),
);

// ignore: non_constant_identifier_names
TextStyle Tstyler =
    TextStyle(color: Colors.red, fontSize: 40, fontFamily: 'Quicksand-Bold');
// ignore: non_constant_identifier_names
TextStyle Tstyleb = TextStyle(
  color: Colors.black,
  fontSize: 50,
);
// ignore: non_constant_identifier_names
TextStyle Tstyleg = TextStyle(
    color: Colors.indigo.shade300, fontSize: 30, fontFamily: 'Opensans-Bold');
Widget infor(String txt, Color color, Color color2) {
  return Container(
    padding: EdgeInsets.all(200),
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            colors: [color, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)),
    child: Text(
      txt,
      style: TextStyle(fontSize: 30),
    ),
  );
}
