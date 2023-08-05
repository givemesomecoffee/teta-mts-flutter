import 'package:chat_app/feature/chat/widgets/message_list.dart';
import 'package:chat_app/feature/chat/widgets/message_sender.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const MessageListContent(),
        bottomNavigationBar: const MessageSender());
  }
}
