import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'RandomButton.dart';

class HomePage extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new PreferredSize(
        child: new GradientAppBar("Flutter Interactivity"),
        preferredSize: new Size(
          MediaQuery.of(context).size.width,
          150.0
        ),
      ),
      body: new Center(
        child: 
          
          new RandomButton(),
      ),
    );
  }
}