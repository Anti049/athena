// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      source: $enumDecodeNullable(_$NotificationSourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'source': _$NotificationSourceEnumMap[instance.source],
    };

const _$NotificationSourceEnumMap = {
  NotificationSource.library: 'library',
  NotificationSource.updates: 'updates',
  NotificationSource.history: 'history',
  NotificationSource.browse: 'browse',
  NotificationSource.more: 'more',
};
