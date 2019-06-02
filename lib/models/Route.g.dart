// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Route _$RouteFromJson(Map<String, dynamic> json) {
  return Route(
      no: json['no'] as int,
      scharr: json['scharr'] as String,
      schdep: json['schdep'] as String,
      distance: json['distance'] as double,
      station: json['station'] == null
          ? null
          : StationDetails.fromJson(json['station'] as Map<String, dynamic>));
}

Map<String, dynamic> _$RouteToJson(Route instance) => <String, dynamic>{
      'no': instance.no,
      'scharr': instance.scharr,
      'schdep': instance.schdep,
      'distance': instance.distance,
      'station': instance.station
    };
