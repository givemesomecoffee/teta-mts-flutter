import 'package:chat_app/feature/chat/widgets/message_list.dart';
import 'package:chat_app/feature/chat/widgets/message_sender.dart';
import 'package:flutter/material.dart';

import '../../services/database_service.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key, required this.title});

  final String title;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: MessageListContent(messages: DatabaseService().trackMessages()),
        bottomNavigationBar: const MessageSender());
  }
}
