import 'package:flutter/material.dart';
import 'BuildTimeAndScore.dart';
import 'ButtonBuild2.dart';

class RandomButton extends StatelessWidget {
  final String name1;
  final String name2;
  final String name3;
  final String name4;
  final VoidCallback GetString;
  const RandomButton({ 
    Key? key,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.name4,
    required this.GetString }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
              child: 
                Container(
                  child: new GradientButton(
                    onPressed: GetString,
                    child: Text(name1.toUpperCase()),
                ),
              )
          ),],
        ),
        Row(
          children: [
            Expanded(
              child: 
              new GradientButton(
                onPressed: GetString,
                child: Text(name2.toUpperCase()),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: 
              new GradientButton(
                onPressed: GetString,
                child: Text(name3.toUpperCase()),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: 
              new GradientButton(
                onPressed: GetString,
                child: Text(name4.toUpperCase()),
              ),
            )
          ],
        ),
      ]
    );
  }
}
