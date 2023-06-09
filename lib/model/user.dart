import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String userId,
    required String? photoUrl,
    required String? displayName,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) =>
      _$UserFromJson(json);

  factory User.fromMap(Map<String, dynamic> data) => User(
      userId: data['userId'], displayName: data['displayName'], photoUrl: data['photoUrl']);
}
