import 'package:momentum/momentum.dart';
import 'package:_project_button/controllers/controllerButton.dart';

class ModelButton extends MomentumModel<ControllerButton>{
  int? score;
  int? counter;
  String? namePicture;
  String? name1;
  String? name2;
  String? name3;
  String? name4;
  ModelButton(
    ControllerButton controllerButton,{
      required this.namePicture,
      this.name1,
      this.name2,
      this.name3,
      this.name4,
      this.score,
      this.counter,
      }
    ):super(controllerButton);

  @override
  void update(
    {
      int? score,
      int? counter,
      String? namePicture,
      String? name1,
      String? name2,
      String? name3,
      String? name4,
    }
  ) {
    ModelButton(
      controller,
      counter: counter ?? this.counter,
      name1: name1 ?? this.name1,
      name2: name2 ?? this.name2,
      name3: name3 ?? this.name3,
      name4: name4 ?? this.name4,
      namePicture: namePicture,
      score: score ?? this.score,
    ).updateMomentum();
  }
}

