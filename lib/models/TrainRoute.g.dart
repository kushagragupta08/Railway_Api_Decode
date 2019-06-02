// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TrainRoute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainRoute _$TrainRouteFromJson(Map<String, dynamic> json) {
  return TrainRoute(
      train: json['train'] == null
          ? null
          : Train.fromJson(json['train'] as Map<String, dynamic>),
      route: (json['route'] as List)
          ?.map((e) =>
              e == null ? null : Route.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TrainRouteToJson(TrainRoute instance) =>
    <String, dynamic>{'train': instance.train, 'route': instance.route};
