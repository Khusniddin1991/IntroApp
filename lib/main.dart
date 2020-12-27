import 'package:flutter/material.dart';
import 'package:intro_ui/pages/Intro_app.dart';
import 'package:intro_ui/pages/MyHomePage.dart';

 main(){
   runApp(MaterialApp(home: IntroApp(),routes: {MyHomePage.id:(ctx)=>MyHomePage(),
     IntroApp.id:(ctx)=>IntroApp()

   },debugShowCheckedModeBanner: false,),);
 }
