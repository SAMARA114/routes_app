//import 'dart:js';

import 'dart:js';

import 'Signin.dart';

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(
          title: Text('Sign_up form'),
        ),
        body: _samara(),

      ),
    );
  }

  Widget _samara()
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _firstname(),
        SizedBox(height: 1),
        _secondname(),
        SizedBox(height: 1),
        _mail(),
        SizedBox(height: 1),
        _password(),
        SizedBox(height: 1),
        _passwordconf(),
        SizedBox(height: 1),
        _loginbut(),


      ],
    );

  }

  Widget _firstname()
  {
    return Column(
      children: [
        Padding(padding:EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            labelText: "enter first name",
          ),
        ),)
      ],
    );
  }

  Widget _secondname()
  {
    return Column(
      children: [
        Padding(padding:EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              labelText: "enter second name",
            ),
          ),)
      ],
    );
  }

  Widget _mail()
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

  Widget _password()
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


  Widget _passwordconf()
  {
    return Column(
      children: [
        Padding(padding:EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              labelText: "Conform password",
            ),
          ),)
      ],
    );
  }

  Widget _loginbut()
  {
   return ElevatedButton(
     child: Text('sign up'),
     onPressed: (){
       Navigator.push(
         context as BuildContext,MaterialPageRoute(builder: (context) => Signin()));
     },
   );
  }



}



