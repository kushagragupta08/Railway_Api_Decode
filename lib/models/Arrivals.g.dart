// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Arrivals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Arrivals _$ArrivalsFromJson(Map<String, dynamic> json) {
  return Arrivals(
      scharr: json['scharr'] as String,
      name: json['name'] as String,
      actdep: json['actdep'] as String,
      schdep: json['schdep'] as String,
      number: json['number'] as String);
}

Map<String, dynamic> _$ArrivalsToJson(Arrivals instance) => <String, dynamic>{
      'scharr': instance.scharr,
      'name': instance.name,
      'actdep': instance.actdep,
      'schdep': instance.schdep,
      'number': instance.number
    };
