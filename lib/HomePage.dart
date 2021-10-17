import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'RandomButton.dart';
import 'BuildTimeAndScore.dart';
import 'Picture.dart';
import 'ButtonBuild.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score = 0;
  int _counter = 10;
  Timer? timer;
  List ListImage = ['bird','cat','dinasour','elephant','goat','lion','monkey','pig','tiger','zebra'];
  Random random = new Random();
  String namePicture = 'bird';
  String name1 = '';
  String name2 = '';
  String name3 = '';
  String name4 = '';
  String textStart = 'Start';
  List ListName = ['','','',''];
  bool _vilsible = true;

  String img(){
    int min =0;
    int max = ListImage.length - 1;
    int r = min + random.nextInt(max-min);
    int a = random.nextInt(max);
    int b = random.nextInt(max);
    int c = random.nextInt(max);
    namePicture = ListImage[r].toString();
    name1= ListImage[a].toString();
    name2= ListImage[b].toString();
    name3 = ListImage[c].toString();
    name4 = ListImage[r].toString();
    ListName = [name1,name2,name3,name4];
    return namePicture;
  }
  
  void pictureRandom(){
    setState(() {
      img();
    });
  }
  void Start(){
    setState(() {
      if(textStart == 'Start')
      {
        _vilsible = false;
        timing();
        img();
        textStart = 'Stop';
      }
      else if(textStart == 'Stop')
      {
        timer?.cancel();
        textStart = 'Start';
      }
    });
  }
  void GetString(){
    setState(() {
      if(name1.toLowerCase()==namePicture||
        name2.toLowerCase() == namePicture ||
        name3.toLowerCase() == namePicture ||
        name4.toLowerCase() == namePicture)
      {
        _counter = 10;
        score+=10;
        pictureRandom();
      }
      else{
        _counter = 10;
        score-=5;
        pictureRandom();
      }
    });
  }
  @override
  void initState(){
    score = 0;
    _counter = 10;
    textStart = 'Start';
    super.initState();
  }
  void timing(){
    _counter = 10;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(_counter>0)
        {
          _counter--;
        }
        else
        {
          _counter = 10;
          score -=5;
          pictureRandom();
        }
      });
     });
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new PreferredSize(
        child: new GradientAppBar("Flutter Interactivity"),
        preferredSize: new Size(
          MediaQuery.of(context).size.width,
          150.0
        ),
      ),
      body: new Center(
        child: new Column(
          children: [
            new Visibility(
              visible: _vilsible,
              child: new MyOutlinedButton(
              onPressed: Start,
              child: Text(textStart),
              ),
            ),
            new TimeAndScore(
              score: score,
              counter: _counter,),
            new Picture(name: namePicture,),
            new RandomButton(name1: ListName[3],name2: ListName[2],name3: ListName[1],name4: ListName[0],GetString: GetString,),
          ],
        ),
      ),
    );
  }
}