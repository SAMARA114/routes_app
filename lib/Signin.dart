import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp( MyApp());
}

class MyAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('sign in form'),
        ),
        body: _sam(),
      ),
    );
  }

    Widget _sam(){
    return Column(

      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _maill(),
        SizedBox(height: 20),
        _pass(),
        _enter(),
      ],
    );
    }


  Widget _maill()
  {
    return Column(
      children: [
        Padding(padding:EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              labelText: "enter Email id",
            ),
          ),)
      ],
    );
  }

  Widget _pass()
  {
    return Column(
      children: [
        Padding(padding:EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              labelText: "enter password",
            ),
          ),)
      ],
    );
  }

  Widget _enter(){
    return
        ElevatedButton(
          onPressed: (){
            Navigator.pop(context as BuildContext);
          },
          child: Text('sign in'),
        );
  }
}