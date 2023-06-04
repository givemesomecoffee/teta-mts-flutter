import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String userId,
    required String text,
    required String timestamp,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);

  factory Message.fromMap(Map<String, dynamic> data) => Message(
      userId: data['userId'], text: data['text'], timestamp: data['timestamp']);
}
