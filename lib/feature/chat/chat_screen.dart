import 'package:chat_app/feature/chat/widgets/message_list.dart';
import 'package:chat_app/feature/chat/widgets/message_sender.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

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
        body: MessageListContent(
            messages: GetIt.instance.get<DatabaseService>().trackMessages()),
        bottomNavigationBar: const MessageSender());
  }
}
