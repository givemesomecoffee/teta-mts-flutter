
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
    required String? title,
    required String? selftext,
    required NewsItemImages? preview,
    required String? thumbnail
  }) = _NewsItemData;

  factory NewsItemData.fromJson(Map<String, Object?> json) =>
      _$NewsItemDataFromJson(json);
}

@freezed
class NewsItemImages  with _$NewsItemImages {
  const factory NewsItemImages({
    required List<NewsItemImagePreview>? images
  }) = _NewsItemImages;

  factory NewsItemImages.fromJson(Map<String, Object?> json) =>
      _$NewsItemImagesFromJson(json);
}

@freezed
class NewsItemImagePreview with _$NewsItemImagePreview {
  const factory NewsItemImagePreview({
    required NewsItemImage? source
  }) = _NewsItemImagePreview;

  factory NewsItemImagePreview.fromJson(Map<String, Object?> json) =>
      _$NewsItemImagePreviewFromJson(json);
}

@freezed
class NewsItemImage with _$NewsItemImage {
  const factory NewsItemImage({
    required String? url
  }) = _NewsItemImage;

  factory NewsItemImage.fromJson(Map<String, Object?> json) =>
      _$NewsItemImageFromJson(json);
}
