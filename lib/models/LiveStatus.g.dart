// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LiveStatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveStatus _$LiveStatusFromJson(Map<String, dynamic> json) {
  return LiveStatus(
      total: json['total'] as int,
      trains: (json['trains'] as List)
          ?.map((e) =>
              e == null ? null : Arrivals.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$LiveStatusToJson(LiveStatus instance) =>
    <String, dynamic>{'total': instance.total, 'trains': instance.trains};
