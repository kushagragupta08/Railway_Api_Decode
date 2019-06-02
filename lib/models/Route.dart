import 'package:json_annotation/json_annotation.dart';
import 'StationDetails.dart';
part 'Route.g.dart';

@JsonSerializable()
class Route extends Object {
  int no;
  String scharr;
  String schdep;
  double distance;
  StationDetails station;

  Route({this.no, this.scharr, this.schdep, this.distance, this.station});

  factory Route.fromJson(Map<String, dynamic> json) {
    return _$RouteFromJson(json);
  }
}
