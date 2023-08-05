
import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_item.dart';
part 'news_response.g.dart';
part 'news_response.freezed.dart';

@freezed
class NewsResponse with _$NewsResponse {
  const factory NewsResponse({
    required NewsData data
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, Object?> json) =>
      _$NewsResponseFromJson(json);
}

@freezed
class NewsData with _$NewsData {
const factory NewsData({
required List<NewsItem> children
}) = _NewsData;

factory NewsData.fromJson(Map<String, Object?> json) =>
_$NewsDataFromJson(json);
}