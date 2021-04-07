import 'package:flutter/material.dart';
import 'package:flutterando_course/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  int counter = 0;

  bool isDartTheme = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, brightness: 
        AppController.instance.isDartTheme 
        ? Brightness.dark
        : Brightness.light
      ),
      home: Scaffold(appBar: AppBar(
        title: Center(
          child: Text('Dark Theme in Flutter'),
        ),
      ),
      body: Center(
        child: Switch(value: AppController.instance.isDartTheme, 
        onChanged: (value){
          AppController.instance.changeTheme();
        },),
      ),
      ),
    );
  }
}