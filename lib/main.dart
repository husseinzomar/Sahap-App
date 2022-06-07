import 'package:flutter/material.dart';
import 'package:sahap/layout/myhomepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sahap App',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      home: MyHomePage(),
    );
  }
}