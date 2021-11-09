import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: 
          DecoratedBox(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.lightBlue.shade900, Colors.red])),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(primary: Colors.transparent,fixedSize: const Size(0, 50)),
              child: child,
            ),
          ),
    );
  }
}