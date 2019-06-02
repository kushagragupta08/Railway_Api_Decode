import 'package:json_annotation/json_annotation.dart';
import 'Train.dart';
import 'Route.dart';
part 'TrainRoute.g.dart';

@JsonSerializable()
class TrainRoute extends Object {
  Train train;
  List<Route> route;

  TrainRoute({this.train, this.route});

  factory TrainRoute.fromJson(Map<String, dynamic> json) {
    return _$TrainRouteFromJson(json);
  }
}
