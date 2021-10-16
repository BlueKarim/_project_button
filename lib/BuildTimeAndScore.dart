import 'dart:async';
import 'package:flutter/material.dart';
import 'Picture.dart';

class TimeAndScore extends StatelessWidget {
  final int score;
  final int counter;
  const TimeAndScore({ 
    Key? key,
    required this.counter,
    required this.score, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: [
          new Text('Time : '+counter.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.0,
            ),
          ),
          new Text('Score : '+score.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 32.0),
          )
        ],
      ),
    );
  }
}