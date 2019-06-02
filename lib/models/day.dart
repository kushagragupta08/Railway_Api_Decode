import 'package:json_annotation/json_annotation.dart';
part 'day.g.dart';

@JsonSerializable()
class Day extends Object {
  String code;
  String runs;

  Day({this.code, this.runs});

  factory Day.fromJson(Map<String,dynamic> json)
  {
    return _$DayFromJson(json);
  }
}
