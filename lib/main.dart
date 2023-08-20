import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/screens/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ToDo App",
      home: Home(),
    );
  }

}