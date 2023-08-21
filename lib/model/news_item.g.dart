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
      selftext: json['selftext'] as String?,
      preview: json['preview'] == null
          ? null
          : NewsItemImages.fromJson(json['preview'] as Map<String, dynamic>),
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_NewsItemDataToJson(_$_NewsItemData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'selftext': instance.selftext,
      'preview': instance.preview,
      'thumbnail': instance.thumbnail,
    };

_$_NewsItemImages _$$_NewsItemImagesFromJson(Map<String, dynamic> json) =>
    _$_NewsItemImages(
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => NewsItemImagePreview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsItemImagesToJson(_$_NewsItemImages instance) =>
    <String, dynamic>{
      'images': instance.images,
    };

_$_NewsItemImagePreview _$$_NewsItemImagePreviewFromJson(
        Map<String, dynamic> json) =>
    _$_NewsItemImagePreview(
      source: json['source'] == null
          ? null
          : NewsItemImage.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NewsItemImagePreviewToJson(
        _$_NewsItemImagePreview instance) =>
    <String, dynamic>{
      'source': instance.source,
    };

_$_NewsItemImage _$$_NewsItemImageFromJson(Map<String, dynamic> json) =>
    _$_NewsItemImage(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_NewsItemImageToJson(_$_NewsItemImage instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
