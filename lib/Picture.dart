import 'dart:math';

import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final String name;
  const Picture({ 
    Key? key,
    required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: 
        Image.asset('assets/images/'+name+'.png')
    );
  }
}