
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_item.g.dart';
part 'news_item.freezed.dart';

@freezed
class NewsItem with _$NewsItem {
  const factory NewsItem({
    required NewsItemData data
  }) = _NewsItem;

  factory NewsItem.fromJson(Map<String, Object?> json) =>
      _$NewsItemFromJson(json);
}

@freezed
class NewsItemData with _$NewsItemData {
  const factory NewsItemData({
    required String? title
  }) = _NewsItemData;

  factory NewsItemData.fromJson(Map<String, Object?> json) =>
      _$NewsItemDataFromJson(json);
}
