import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_par/drawer_multiScreens.dart';
import 'package:flutter_app_par/styles1.dart';
import 'package:intl/intl.dart';

class Myhomepage4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Datepickerstate();
}

class _Datepickerstate extends State {
  var _selectedDate;
  void _datePickerst() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime.now(),
    ).then((value) {

      if(value==null){return;}
      setState(() {
        _selectedDate=value;
        _selectedDate=DateFormat.yMMMd().format(_selectedDate);

      });



    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'dater pickker',
          style: Tstyler,
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: _datePickerst,
          child: Text("$_selectedDate"),
          style: bstyle1bw,
        ),
      
      
      
      ),
    );
  }
}
