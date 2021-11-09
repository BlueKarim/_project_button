import "package:flutter/material.Dart";

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children : <Widget>[const GradientAppBar(""), Container()],);
  }
}


class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 50.0;

  const GradientAppBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Container(
      padding: EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + barHeight,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.blue],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
}