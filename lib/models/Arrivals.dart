import 'package:json_annotation/json_annotation.dart';
part 'Arrivals.g.dart';

@JsonSerializable()
class Arrivals extends Object {
  String scharr;
  String name;
  String actdep;
  String schdep;
  String number;

  Arrivals({this.scharr, this.name, this.actdep, this.schdep, this.number});

  factory Arrivals.fromJson(Map<String, dynamic> json) {
    return _$ArrivalsFromJson(json);
  }
}
