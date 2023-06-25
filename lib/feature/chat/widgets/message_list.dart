import 'package:chat_app/feature/chat/widgets/message_placeholder.dart';
import 'package:chat_app/model/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:chat_app/feature/chat/widgets/message_cell.dart';

class MessageListContent extends StatelessWidget {
  const MessageListContent({super.key, required this.messages});

  final Stream<List<Message>> messages;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: messages,
      builder: (context, snapshot) {
        final isLoading = snapshot.data == null;
        if (snapshot.data?.isEmpty == true) {
          return const Text("no messages");
        } else {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
                itemCount: isLoading ? 10 : snapshot.data!.length,
                itemBuilder: (context, index) {
                  return AnimatedSwitcher(duration: const Duration(seconds: 3),
                  child: isLoading
                      ? const MessagePlaceholder()
                      : MessageCell(
                          message: snapshot.data![index].text,
                          name: snapshot.data![index].userId,
                          timestamp: snapshot.data![index].timestamp));
                }),
          );
        }
      },
    );
  }
}
