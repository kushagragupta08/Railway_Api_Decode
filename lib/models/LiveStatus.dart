import 'package:json_annotation/json_annotation.dart';
import 'Arrivals.dart';
part 'LiveStatus.g.dart';

@JsonSerializable()
class LiveStatus extends Object {
  int total;
  List<Arrivals> trains;

  LiveStatus({this.total, this.trains});

  factory LiveStatus.fromJson(Map<String, dynamic> json) {
    return _$LiveStatusFromJson(json);
  }
}
