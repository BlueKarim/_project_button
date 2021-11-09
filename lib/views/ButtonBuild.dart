import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final double thickness;

  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.style,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.lightBlue.shade900, Colors.red]),),
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(2),
        child: OutlinedButton(
          onPressed: onPressed,
          style: style,
          child: child,
        ),
      ),
    );
  }
}