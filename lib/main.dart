import 'package:flutter/material.dart';
import 'package:flutter_yourcode/pages/login.dart';



void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YourCode Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
  
}