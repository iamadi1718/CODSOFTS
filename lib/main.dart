import 'dart:async';

import 'package:quizapp/quiz1.dart';

import 'package:flutter/material.dart';
import 'package:quizapp/home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override



  Widget build(BuildContext context) {
    setState((){
      Timer(
          Duration(seconds: 3),
              () =>
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homescreen())
              )
      );
    }
    );
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage('assets/images/quiz.jpg'))
        ),
        child: Center(
          child: Text('QUIZ APP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
        ),

      ),

    );
  }
}