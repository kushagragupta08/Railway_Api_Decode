// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Train.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Train _$TrainFromJson(Map<String, dynamic> json) {
  return Train(
      name: json['name'] as String,
      number: json['number'] as String,
      days: (json['days'] as List)
          ?.map(
              (e) => e == null ? null : Day.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      classes: (json['classes'] as List)
          ?.map((e) =>
              e == null ? null : TrainClass.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TrainToJson(Train instance) => <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'days': instance.days,
      'classes': instance.classes
    };
