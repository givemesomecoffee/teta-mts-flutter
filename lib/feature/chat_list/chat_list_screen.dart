import 'package:chat_app/feature/chat_list/widget/chat_item.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chats"),
        ),
        body: ListView(
          children: const <Widget>[
            ChatItem(title: 'title', subtitle: 'subtitle', date: '31.05.2023'),
            Divider(height: 8)
          ],
        ));
  }
}
