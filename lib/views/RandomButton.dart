import 'package:flutter/material.dart';
import 'ButtonBuild2.dart';


class RandomButton extends StatelessWidget {
  final String name1;
  final VoidCallback GetString;
  const RandomButton({ 
    Key? key,
    required this.name1,
    required this.GetString }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: 
            GradientButton(
              onPressed: GetString,
              child: Text(name1),
            )
        ),
      ],
    );
  }
}
