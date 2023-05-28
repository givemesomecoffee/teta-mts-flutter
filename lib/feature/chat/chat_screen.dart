import 'package:chat_app/feature/chat/widgets/message_list.dart';
import 'package:chat_app/feature/chat/widgets/message_sender.dart';
import 'package:chat_app/di/service_locator.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.title});

  final String title;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: MessageListContent(messages: Dependencies.of(context).dbService.trackMessages()),
        bottomNavigationBar: const MessageSender());
  }
}
