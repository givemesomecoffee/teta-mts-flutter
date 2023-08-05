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
  $Res call({String? title});
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
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
  $Res call({String? title});
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
  }) {
    return _then(_$_NewsItemData(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItemData implements _NewsItemData {
  const _$_NewsItemData({required this.title});

  factory _$_NewsItemData.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemDataFromJson(json);

  @override
  final String? title;

  @override
  String toString() {
    return 'NewsItemData(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItemData &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

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
  const factory _NewsItemData({required final String? title}) = _$_NewsItemData;

  factory _NewsItemData.fromJson(Map<String, dynamic> json) =
      _$_NewsItemData.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemDataCopyWith<_$_NewsItemData> get copyWith =>
      throw _privateConstructorUsedError;
}
