// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsResponse _$$_NewsResponseFromJson(Map<String, dynamic> json) =>
    _$_NewsResponse(
      data: NewsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsResponseToJson(_$_NewsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_NewsData _$$_NewsDataFromJson(Map<String, dynamic> json) => _$_NewsData(
      children: (json['children'] as List<dynamic>)
          .map((e) => NewsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsDataToJson(_$_NewsData instance) =>
    <String, dynamic>{
      'children': instance.children,
    };
