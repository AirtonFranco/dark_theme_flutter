import 'package:flutter/material.dart';
import 'package:flutterando_course/app_controller.dart';
import 'home_page.dart';

void main() {
  runApp(FlutterandoCourse());
}

class FlutterandoCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}