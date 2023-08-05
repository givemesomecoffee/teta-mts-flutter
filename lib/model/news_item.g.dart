// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsItem _$$_NewsItemFromJson(Map<String, dynamic> json) => _$_NewsItem(
      data: NewsItemData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsItemToJson(_$_NewsItem instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_NewsItemData _$$_NewsItemDataFromJson(Map<String, dynamic> json) =>
    _$_NewsItemData(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_NewsItemDataToJson(_$_NewsItemData instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
