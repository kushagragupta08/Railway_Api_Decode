import 'package:json_annotation/json_annotation.dart';
import 'day.dart';
import 'TrainClass.dart';
part 'Train.g.dart';

@JsonSerializable()
class Train extends Object {
  String name;
  String number;
  List<Day> days;
  List<TrainClass> classes;

  Train({this.name, this.number, this.days, this.classes});

  factory Train.fromJson(Map<String, dynamic> json) {
    return _$TrainFromJson(json);
  }
}
