import 'dart:js';
import 'package:_project_button/views/HomePage.dart';
import 'package:_project_button/views/viewButton.dart';
import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:_project_button/models/modelButton.dart';
import 'dart:math';
import 'dart:async';


class ControllerButton extends MomentumController<ModelButton>{
  var animals=["bird","cat","dinasour","elephant","goat","lion","monkey","pig","tiger","zebra"];
  String ?correct_answer;
  Random rdLocation=Random();
  Random rdAnimals=Random();
  var answers=List.filled(4, '');
  Timer? timer;
  int time = 10;
  int? Location;
  int add=0;
  int? Location_animal;
  String temporary='';
  int score=0;
  @override
  ModelButton init(){
    Reset();
    return ModelButton(
      this,
      namePicture: correct_answer,
      name1: answers[0],
      name2: answers[1],
      name3: answers[2],
      name4: answers[3],
      counter:time,
      score:score
    );
  }
  void Reset(){
    timer?.cancel();
    time=10;
    add=0;
    answers=List.filled(4, '');
    Location=rdLocation.nextInt(4);
    Location_animal=rdAnimals.nextInt(10);
    correct_answer=animals[Location_animal!];
    answers[Location!]=correct_answer!;
    for(int i=0;;i++){
      if(add<4){
        if(add!=Location){
          temporary=animals[rdAnimals.nextInt(10)];
          if(!answers.contains(temporary)){
            answers[add]=temporary;
            add++;
          }
        }
        else{
          add++;
        }
      }
      else{
          break;
        }
    }
    Start();
  }
  void Check(String answer){ 
    if(answer==animals[Location_animal!]){
      score++;
      model.update(
        namePicture: correct_answer,
        name1:answers[0],
        name2:answers[1],
        name3:answers[2],
        name4:answers[3],
        counter: time,
        score:score
      ); 
      Reset();
    }
    else{  
      model.update(
        namePicture: correct_answer,
        name1:answers[0],
        name2:answers[1],
        name3:answers[2],
        name4:answers[3],
        counter: time,
        score:score
      );       
      Finish();
    }
  }
  void Start(){
    timer=Timer.periodic(const Duration(seconds: 1), (timer) { 
      if(time>=0){
        model.update(
          namePicture: correct_answer,
          name1:answers[0],
          name2:answers[1],
          name3:answers[2],
          name4:answers[3],
          counter: time,
          score:score
        );
        time--;
      }
      else{ 
        Finish(); 
      }
    });
  }
  void Finish(){
    score=0;
    timer?.cancel();
    HomePage.Finish();
  }
}