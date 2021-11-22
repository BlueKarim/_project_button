import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'GradientAppBar.dart';
import 'RandomButton.dart';
import 'BuildTimeAndScore.dart';
import 'package:_project_button/views/Picture.dart';
import 'package:flutter/rendering.dart';
import 'package:_project_button/controllers/controllerButton.dart';
import 'package:_project_button/models/modelButton.dart';

class HomePage extends StatefulWidget {
  static BuildContext? Context;
  HomePage(BuildContext context, { Key? key }) : super(key: key)
  {
    Context = context;
  }
  static void Finish() {
    showDialog(
      context:Context!,
      builder: (BuildContext context) => AlertDialog(
          title:const Text("Game over!!!",style: TextStyle(fontSize: 24,color: Colors.red),),
          content:const Text("Do you want play again!"),
          actions: [
            ElevatedButton(
              onPressed:(){
                Navigator.of(context).pop(false);
                Momentum.controller<ControllerButton>(context).Reset();
              },
              child: const Text('Yes'),
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.pushNamed(context, '/');
              },
              child: const Text('No'),
            ),
          ],
        ),
    );
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: const GradientAppBar("Flutter Interactivity"),
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          150.0
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MomentumBuilder(
              controllers: const [ControllerButton],
              builder: (context , snapshot){
                var model = snapshot<ModelButton>();
                return TimeAndScore(
                    score: model.score!,
                    counter: model.counter!,
                  );
              }
            ),
            MomentumBuilder(
              controllers: const [ControllerButton],
              builder: (context , snapshot){
                var model = snapshot<ModelButton>();
                return Picture(name: model.namePicture!);
                }
            ), 
            MomentumBuilder(
              controllers: const [ControllerButton],
              builder: (context , snapshot){
                var model = snapshot<ModelButton>();
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RandomButton(
                    name1: model.name1!,
                    GetString: () => Momentum.controller<ControllerButton>(context).Check(model.name1!)
                    ),
                    RandomButton(
                    name1: model.name2!,
                    GetString: () => Momentum.controller<ControllerButton>(context).Check(model.name2!)
                    ),
                    RandomButton(
                    name1: model.name3!,
                    GetString: () => Momentum.controller<ControllerButton>(context).Check(model.name3!)
                    ),
                    RandomButton(
                    name1: model.name4!,
                    GetString: () => Momentum.controller<ControllerButton>(context).Check(model.name4!)
                    ),
                  ]
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}