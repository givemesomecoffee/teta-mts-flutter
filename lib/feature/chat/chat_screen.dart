import 'package:chat_app/feature/chat/widgets/message_cell.dart';
import 'package:chat_app/feature/chat/widgets/message_sender.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/services/database_service.dart';

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
        body: StreamBuilder(
          stream: DatabaseService().trackMessages(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Text("loading");
            } else if (snapshot.data?.isEmpty == true) {
              return const Text("no messages");
            } else {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                    reverse: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return messageCell(snapshot.data![index]);
                    }),
              );
            }
          },
        ),
        bottomNavigationBar: messageSender(context));
  }
}
