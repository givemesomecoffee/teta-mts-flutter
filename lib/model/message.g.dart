// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      userId: json['userId'] as String,
      text: json['text'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'text': instance.text,
      'timestamp': instance.timestamp,
    };
