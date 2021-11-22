import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'package:flutter/rendering.dart';

class ToDo{
  final int counter;
  const ToDo({required this.counter});
}
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                textStyle: const TextStyle(
                  fontSize: 64,
                  backgroundColor: Colors.red,
                  color: Colors.white
                )
              ),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level1',
                  arguments: const ToDo(counter: 5));
              },
              child: 
                const Text('Hell',),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                textStyle: const TextStyle(
                  fontSize: 64,
                  backgroundColor: Colors.redAccent,
                  color: Colors.white
                )
              ),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level2',
                  arguments: const ToDo(counter: 10)
                  );
              },
              child: 
                const Text('Hard'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                textStyle: const TextStyle(
                  fontSize: 64,
                  backgroundColor: Colors.deepOrange,
                  color: Colors.white
                )
              ),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level3',
                  arguments: const ToDo(counter: 15));
              },
              child: 
                const Text('Normal'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/level4',
                  arguments: const ToDo(counter: 20));
              },
              child: 
                const Text('Easy',
                  style: TextStyle(
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