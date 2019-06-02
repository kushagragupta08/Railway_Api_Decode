import 'package:json_annotation/json_annotation.dart';
part 'StationDetails.g.dart';

@JsonSerializable()
class StationDetails extends Object {
  String name;
  String code;

  StationDetails({this.name, this.code});

  factory StationDetails.fromJson(Map<String, dynamic> json) {
    return _$StationDetailsFromJson(json);
  }
}
