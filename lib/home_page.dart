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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, brightness: 
        AppController.instance.isDartTheme 
        ? Brightness.dark
        : Brightness.light
      ),
      home: Scaffold(appBar: AppBar(
        actions: [
          SwitchButton()
        ],
        title: Center(
          child: Text('Dark Theme in Flutter'),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Dark Mode flutter'),
            SwitchButton()
          ],
        ),
      )
      ),
    );
  }
}

class SwitchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDartTheme, 
        onChanged: (value){
          AppController.instance.changeTheme();
        },);
  }
}