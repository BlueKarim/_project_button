import 'package:flutter/material.dart';
import 'ButtonBuild.dart';

class RandomButton extends StatefulWidget {
  const RandomButton({ Key? key }) : super(key: key);

  @override
  _RandomButtonState createState() => _RandomButtonState();
}

class _RandomButtonState extends State<RandomButton> {
  String _RandomTextButton ="Gradient";
  void GetString(){
    setState(() {
      _RandomTextButton = "Pig";
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
            child: 
              MyOutlinedButton(
              onPressed: GetString,
              gradient: LinearGradient(colors: [Colors.indigo, Colors.pink]),
              child: Text(_RandomTextButton),
            ),
          ),],
        ),
        Row(
          children: [
            Expanded(
              child: 
              DecoratedBox(
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.pink, Colors.green])),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.transparent),
                  child: Text('Elevated Button'),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: 
                RaisedGradientButton(
                  child: Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                  gradient: LinearGradient(
                    colors: <Color>[Colors.green, Colors.black],
                  ),
                  onPressed: (){
                    print('button clicked');
                  }
                ),
              )
          ],
        ),
        MyOutlinedButton(
          onPressed: GetString,
          gradient: LinearGradient(colors: [Colors.indigo, Colors.pink]),
          child: Text(_RandomTextButton),
        ),
        MyOutlinedButton(
          onPressed: GetString,
          gradient: LinearGradient(colors: [Colors.indigo, Colors.pink]),
          child: Text(_RandomTextButton),
        ),
        MyOutlinedButton(
          onPressed: GetString,
          gradient: LinearGradient(colors: [Colors.indigo, Colors.pink]),
          child: Text(_RandomTextButton),
        ),
      ]
    );
  }
}