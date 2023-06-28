import 'package:chat_app/feature/chat/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.date})
      : super(key: key);

  final String title;
  final String subtitle;
  final String date;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatScreen(title: title),
          ),
        );
      },
      child: ListTile(
        leading: const CircleAvatar(child: Text('A')),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(date),
      ),
    );
  }
}
