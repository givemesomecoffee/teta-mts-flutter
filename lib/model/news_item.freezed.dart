// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return _NewsItem.fromJson(json);
}

/// @nodoc
mixin _$NewsItem {
  NewsItemData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemCopyWith<NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemCopyWith<$Res> {
  factory $NewsItemCopyWith(NewsItem value, $Res Function(NewsItem) then) =
      _$NewsItemCopyWithImpl<$Res, NewsItem>;
  @useResult
  $Res call({NewsItemData data});

  $NewsItemDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res, $Val extends NewsItem>
    implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsItemData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsItemDataCopyWith<$Res> get data {
    return $NewsItemDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsItemCopyWith<$Res> implements $NewsItemCopyWith<$Res> {
  factory _$$_NewsItemCopyWith(
          _$_NewsItem value, $Res Function(_$_NewsItem) then) =
      __$$_NewsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsItemData data});

  @override
  $NewsItemDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_NewsItemCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$_NewsItem>
    implements _$$_NewsItemCopyWith<$Res> {
  __$$_NewsItemCopyWithImpl(
      _$_NewsItem _value, $Res Function(_$_NewsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_NewsItem(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsItemData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItem implements _NewsItem {
  const _$_NewsItem({required this.data});

  factory _$_NewsItem.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemFromJson(json);

  @override
  final NewsItemData data;

  @override
  String toString() {
    return 'NewsItem(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItem &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsItemCopyWith<_$_NewsItem> get copyWith =>
      __$$_NewsItemCopyWithImpl<_$_NewsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemToJson(
      this,
    );
  }
}

abstract class _NewsItem implements NewsItem {
  const factory _NewsItem({required final NewsItemData data}) = _$_NewsItem;

  factory _NewsItem.fromJson(Map<String, dynamic> json) = _$_NewsItem.fromJson;

  @override
  NewsItemData get data;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemCopyWith<_$_NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsItemData _$NewsItemDataFromJson(Map<String, dynamic> json) {
  return _NewsItemData.fromJson(json);
}

/// @nodoc
mixin _$NewsItemData {
  String? get title => throw _privateConstructorUsedError;
  String? get selftext => throw _privateConstructorUsedError;
  NewsItemImages? get preview => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemDataCopyWith<NewsItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemDataCopyWith<$Res> {
  factory $NewsItemDataCopyWith(
          NewsItemData value, $Res Function(NewsItemData) then) =
      _$NewsItemDataCopyWithImpl<$Res, NewsItemData>;
  @useResult
  $Res call(
      {String? title,
      String? selftext,
      NewsItemImages? preview,
      String? thumbnail});

  $NewsItemImagesCopyWith<$Res>? get preview;
}

/// @nodoc
class _$NewsItemDataCopyWithImpl<$Res, $Val extends NewsItemData>
    implements $NewsItemDataCopyWith<$Res> {
  _$NewsItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? selftext = freezed,
    Object? preview = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as NewsItemImages?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsItemImagesCopyWith<$Res>? get preview {
    if (_value.preview == null) {
      return null;
    }

    return $NewsItemImagesCopyWith<$Res>(_value.preview!, (value) {
      return _then(_value.copyWith(preview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsItemDataCopyWith<$Res>
    implements $NewsItemDataCopyWith<$Res> {
  factory _$$_NewsItemDataCopyWith(
          _$_NewsItemData value, $Res Function(_$_NewsItemData) then) =
      __$$_NewsItemDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? selftext,
      NewsItemImages? preview,
      String? thumbnail});

  @override
  $NewsItemImagesCopyWith<$Res>? get preview;
}

/// @nodoc
class __$$_NewsItemDataCopyWithImpl<$Res>
    extends _$NewsItemDataCopyWithImpl<$Res, _$_NewsItemData>
    implements _$$_NewsItemDataCopyWith<$Res> {
  __$$_NewsItemDataCopyWithImpl(
      _$_NewsItemData _value, $Res Function(_$_NewsItemData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? selftext = freezed,
    Object? preview = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_NewsItemData(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      preview: freezed == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as NewsItemImages?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItemData implements _NewsItemData {
  const _$_NewsItemData(
      {required this.title,
      required this.selftext,
      required this.preview,
      required this.thumbnail});

  factory _$_NewsItemData.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemDataFromJson(json);

  @override
  final String? title;
  @override
  final String? selftext;
  @override
  final NewsItemImages? preview;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'NewsItemData(title: $title, selftext: $selftext, preview: $preview, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItemData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.selftext, selftext) ||
                other.selftext == selftext) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, selftext, preview, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsItemDataCopyWith<_$_NewsItemData> get copyWith =>
      __$$_NewsItemDataCopyWithImpl<_$_NewsItemData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemDataToJson(
      this,
    );
  }
}

abstract class _NewsItemData implements NewsItemData {
  const factory _NewsItemData(
      {required final String? title,
      required final String? selftext,
      required final NewsItemImages? preview,
      required final String? thumbnail}) = _$_NewsItemData;

  factory _NewsItemData.fromJson(Map<String, dynamic> json) =
      _$_NewsItemData.fromJson;

  @override
  String? get title;
  @override
  String? get selftext;
  @override
  NewsItemImages? get preview;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemDataCopyWith<_$_NewsItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsItemImages _$NewsItemImagesFromJson(Map<String, dynamic> json) {
  return _NewsItemImages.fromJson(json);
}

/// @nodoc
mixin _$NewsItemImages {
  List<NewsItemImagePreview>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemImagesCopyWith<NewsItemImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemImagesCopyWith<$Res> {
  factory $NewsItemImagesCopyWith(
          NewsItemImages value, $Res Function(NewsItemImages) then) =
      _$NewsItemImagesCopyWithImpl<$Res, NewsItemImages>;
  @useResult
  $Res call({List<NewsItemImagePreview>? images});
}

/// @nodoc
class _$NewsItemImagesCopyWithImpl<$Res, $Val extends NewsItemImages>
    implements $NewsItemImagesCopyWith<$Res> {
  _$NewsItemImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<NewsItemImagePreview>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsItemImagesCopyWith<$Res>
    implements $NewsItemImagesCopyWith<$Res> {
  factory _$$_NewsItemImagesCopyWith(
          _$_NewsItemImages value, $Res Function(_$_NewsItemImages) then) =
      __$$_NewsItemImagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsItemImagePreview>? images});
}

/// @nodoc
class __$$_NewsItemImagesCopyWithImpl<$Res>
    extends _$NewsItemImagesCopyWithImpl<$Res, _$_NewsItemImages>
    implements _$$_NewsItemImagesCopyWith<$Res> {
  __$$_NewsItemImagesCopyWithImpl(
      _$_NewsItemImages _value, $Res Function(_$_NewsItemImages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_$_NewsItemImages(
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<NewsItemImagePreview>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItemImages implements _NewsItemImages {
  const _$_NewsItemImages({required final List<NewsItemImagePreview>? images})
      : _images = images;

  factory _$_NewsItemImages.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemImagesFromJson(json);

  final List<NewsItemImagePreview>? _images;
  @override
  List<NewsItemImagePreview>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsItemImages(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItemImages &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsItemImagesCopyWith<_$_NewsItemImages> get copyWith =>
      __$$_NewsItemImagesCopyWithImpl<_$_NewsItemImages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemImagesToJson(
      this,
    );
  }
}

abstract class _NewsItemImages implements NewsItemImages {
  const factory _NewsItemImages(
      {required final List<NewsItemImagePreview>? images}) = _$_NewsItemImages;

  factory _NewsItemImages.fromJson(Map<String, dynamic> json) =
      _$_NewsItemImages.fromJson;

  @override
  List<NewsItemImagePreview>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemImagesCopyWith<_$_NewsItemImages> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsItemImagePreview _$NewsItemImagePreviewFromJson(Map<String, dynamic> json) {
  return _NewsItemImagePreview.fromJson(json);
}

/// @nodoc
mixin _$NewsItemImagePreview {
  NewsItemImage? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemImagePreviewCopyWith<NewsItemImagePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemImagePreviewCopyWith<$Res> {
  factory $NewsItemImagePreviewCopyWith(NewsItemImagePreview value,
          $Res Function(NewsItemImagePreview) then) =
      _$NewsItemImagePreviewCopyWithImpl<$Res, NewsItemImagePreview>;
  @useResult
  $Res call({NewsItemImage? source});

  $NewsItemImageCopyWith<$Res>? get source;
}

/// @nodoc
class _$NewsItemImagePreviewCopyWithImpl<$Res,
        $Val extends NewsItemImagePreview>
    implements $NewsItemImagePreviewCopyWith<$Res> {
  _$NewsItemImagePreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsItemImage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsItemImageCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $NewsItemImageCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsItemImagePreviewCopyWith<$Res>
    implements $NewsItemImagePreviewCopyWith<$Res> {
  factory _$$_NewsItemImagePreviewCopyWith(_$_NewsItemImagePreview value,
          $Res Function(_$_NewsItemImagePreview) then) =
      __$$_NewsItemImagePreviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsItemImage? source});

  @override
  $NewsItemImageCopyWith<$Res>? get source;
}

/// @nodoc
class __$$_NewsItemImagePreviewCopyWithImpl<$Res>
    extends _$NewsItemImagePreviewCopyWithImpl<$Res, _$_NewsItemImagePreview>
    implements _$$_NewsItemImagePreviewCopyWith<$Res> {
  __$$_NewsItemImagePreviewCopyWithImpl(_$_NewsItemImagePreview _value,
      $Res Function(_$_NewsItemImagePreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$_NewsItemImagePreview(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsItemImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItemImagePreview implements _NewsItemImagePreview {
  const _$_NewsItemImagePreview({required this.source});

  factory _$_NewsItemImagePreview.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemImagePreviewFromJson(json);

  @override
  final NewsItemImage? source;

  @override
  String toString() {
    return 'NewsItemImagePreview(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItemImagePreview &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsItemImagePreviewCopyWith<_$_NewsItemImagePreview> get copyWith =>
      __$$_NewsItemImagePreviewCopyWithImpl<_$_NewsItemImagePreview>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemImagePreviewToJson(
      this,
    );
  }
}

abstract class _NewsItemImagePreview implements NewsItemImagePreview {
  const factory _NewsItemImagePreview({required final NewsItemImage? source}) =
      _$_NewsItemImagePreview;

  factory _NewsItemImagePreview.fromJson(Map<String, dynamic> json) =
      _$_NewsItemImagePreview.fromJson;

  @override
  NewsItemImage? get source;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemImagePreviewCopyWith<_$_NewsItemImagePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsItemImage _$NewsItemImageFromJson(Map<String, dynamic> json) {
  return _NewsItemImage.fromJson(json);
}

/// @nodoc
mixin _$NewsItemImage {
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemImageCopyWith<NewsItemImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemImageCopyWith<$Res> {
  factory $NewsItemImageCopyWith(
          NewsItemImage value, $Res Function(NewsItemImage) then) =
      _$NewsItemImageCopyWithImpl<$Res, NewsItemImage>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$NewsItemImageCopyWithImpl<$Res, $Val extends NewsItemImage>
    implements $NewsItemImageCopyWith<$Res> {
  _$NewsItemImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsItemImageCopyWith<$Res>
    implements $NewsItemImageCopyWith<$Res> {
  factory _$$_NewsItemImageCopyWith(
          _$_NewsItemImage value, $Res Function(_$_NewsItemImage) then) =
      __$$_NewsItemImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$_NewsItemImageCopyWithImpl<$Res>
    extends _$NewsItemImageCopyWithImpl<$Res, _$_NewsItemImage>
    implements _$$_NewsItemImageCopyWith<$Res> {
  __$$_NewsItemImageCopyWithImpl(
      _$_NewsItemImage _value, $Res Function(_$_NewsItemImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_NewsItemImage(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItemImage implements _NewsItemImage {
  const _$_NewsItemImage({required this.url});

  factory _$_NewsItemImage.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemImageFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'NewsItemImage(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItemImage &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsItemImageCopyWith<_$_NewsItemImage> get copyWith =>
      __$$_NewsItemImageCopyWithImpl<_$_NewsItemImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemImageToJson(
      this,
    );
  }
}

abstract class _NewsItemImage implements NewsItemImage {
  const factory _NewsItemImage({required final String? url}) = _$_NewsItemImage;

  factory _NewsItemImage.fromJson(Map<String, dynamic> json) =
      _$_NewsItemImage.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemImageCopyWith<_$_NewsItemImage> get copyWith =>
      throw _privateConstructorUsedError;
}
