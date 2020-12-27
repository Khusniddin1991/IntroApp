import 'package:flutter/material.dart';

import 'Intro_app.dart';


class MyHomePage extends StatefulWidget {
  static final String id='MyHomePage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:Column(
        children: [
          Flexible(flex: 1,child: Container(color: Colors.purple,)),
          Flexible(flex: 1,child: Container(color: Colors.teal,)),
          Container(color: Colors.purple,)


        ],


      ));
  }
}
