import 'package:flutter/material.dart';
import 'package:string_to_hex/string_to_hex.dart';
import 'package:timeago/timeago.dart' as timeago;

class MessageCell extends StatelessWidget {
  const MessageCell({
    super.key,
    required this.message,
    required this.name,
    required this.timestamp,
  });

  final String name;
  final String message;
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name.length > 8 ? name.substring(0, 8) : name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(
                          StringToHex.toColor(StringToHex.toHexString(name)))),
                ),
                const SizedBox(width: 6),
                Text(
                  timeago.format(DateTime.fromMillisecondsSinceEpoch(
                      int.parse(timestamp))),
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black38,
                      fontSize: 13.0),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ));
  }
}
