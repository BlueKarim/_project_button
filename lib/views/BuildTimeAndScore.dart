import 'package:flutter/material.dart';

class TimeAndScore extends StatelessWidget {
  final int score;
  final int counter;
  const TimeAndScore({ 
    Key? key,
    required this.counter,
    required this.score, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Time : '+counter.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 32.0,
            ),
          ),
          Text('Score : '+score.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 32.0),
          )
        ],
      ),
    );
  }
}