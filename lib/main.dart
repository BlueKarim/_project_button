import 'package:_project_button/controllers/controllerButton.dart';
import 'package:_project_button/views/viewButton.dart';
import 'package:momentum/momentum.dart';
import 'views/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Momentum(
      controllers: [ControllerButton()],
      child: const MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(context) {
    return MaterialApp(
        title: 'Flutter Interactivity',
        initialRoute: '/',
        routes: {
          '/' : (context) => const ChoseLevel(),
          '/level1' : (context) => HomePage(context),
          '/level2' : (context) => HomePage(context),
          '/level3' : (context) => HomePage(context),
          '/level4' : (context) => HomePage(context),
        },
      );
  }
}