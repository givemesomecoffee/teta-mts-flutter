import 'package:flutter/cupertino.dart';
import 'package:chat_app/feature/chat/widgets/message_cell.dart';

class MessageListContent extends StatelessWidget {
  const MessageListContent({super.key, required this.messages});
  final Stream messages;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: messages,
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
                  return MessageCell(message: snapshot.data![index]);
                }),
          );
        }
      },
    );
  }
}
