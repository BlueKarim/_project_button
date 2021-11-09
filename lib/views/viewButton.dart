import 'package:_project_button/models/modelButton.dart';
import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'ButtonBuild.dart';
import 'package:flutter/rendering.dart';
import 'package:_project_button/controllers/controllerButton.dart';

class ChoseLevel extends StatefulWidget {
  const ChoseLevel({ Key? key }) : super(key: key);

  @override
  _ChoseLevelState createState() => _ChoseLevelState();
}

class _ChoseLevelState extends State<ChoseLevel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const GradientAppBar("Flutter Interactivity"),
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          150.0
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyOutlinedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level1',);
              },
              child: 
                Text('Hell',
                  style: const TextStyle(
                    fontSize: 64,
                    backgroundColor: Colors.red,
                    color: Colors.white,)
                ),
            ),
            MyOutlinedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level2',);
              },
              child: 
                Text('Hard',
                  style: const TextStyle(
                    fontSize: 64,
                    backgroundColor: Colors.redAccent,
                    color: Colors.white)
                ),
            ),
            MyOutlinedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level3',);
              },
              child: 
                Text('Normal',
                  style: const TextStyle(
                    fontSize: 64,
                    backgroundColor: Colors.deepOrange,
                    color: Colors.white)
                ),
            ),
            MyOutlinedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level4',);
              },
              child: 
                Text('Easy',
                  style: const TextStyle(
                    
                    fontSize: 64,
                    backgroundColor: Colors.blue,
                    color: Colors.white,)
                ),
            ),
          ]
        )
      )
    );
  }
}