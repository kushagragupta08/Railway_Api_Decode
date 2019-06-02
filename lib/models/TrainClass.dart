import 'package:json_annotation/json_annotation.dart';
part 'TrainClass.g.dart';

@JsonSerializable()
class TrainClass extends Object {
  String code;
  String available;

  TrainClass({this.code, this.available});

  factory TrainClass.fromJson(Map<String, dynamic> json) {
    return _$TrainClassFromJson(json);
  }
}
