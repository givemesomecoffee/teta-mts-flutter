import 'package:chat_app/model/message.dart';
import 'package:flutter/material.dart';
import 'package:string_to_hex/string_to_hex.dart';
import 'package:timeago/timeago.dart' as timeago;

Padding messageCell(Message message) {
  return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                message.userId.substring(0, 8),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(StringToHex.toColor(StringToHex.toHexString(message.userId)))),
              ),
              const SizedBox(width: 6),
              Text(
                timeago.format(DateTime.fromMillisecondsSinceEpoch(
                    int.parse(message.timestamp))),
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black38,
                    fontSize: 13.0),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            message.text,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ));
}
