import 'package:flutter/material.dart';

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
  Widget buildButton(){
    return Expanded(
      child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children:<Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF14B8A6),
                          Color(0xFF5EEAD4),
                          Color(0xFFCCFBF1),
                        ]
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(40, 80),
                      primary: Colors.black,
                      textStyle: const TextStyle(fontSize: 30),
                    ),
                    onPressed: GetString,
                    child: Text(_RandomTextButton),
                  ),
                )
              ],
            ),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              buildButton(),
            ],
          ),
          Row(
            children: [
              buildButton(),
            ],
          ),
          Row(
            children: [
              buildButton(),
            ],
          ),
          Row(
            children: [
              buildButton(),
            ],
          ),
        ],
      ),
    );
  }
}