import 'package:chat_app/feature/chat/widgets/message_placeholder.dart';
import 'package:chat_app/services/service_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:chat_app/feature/chat/widgets/message_cell.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MessageListContent extends ConsumerWidget {
  const MessageListContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(messagesProvider);
    return messages.when(
      loading: () {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const AnimatedSwitcher(
                    duration: Duration(seconds: 3),
                    child: MessagePlaceholder());
              }),
        );
      },
      error: (err, stack) => Text('Error: $err'),
      data: (items) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return AnimatedSwitcher(
                    duration: const Duration(seconds: 3),
                    child: MessageCell(
                        message: items[index].text,
                        name: items[index].userId,
                        timestamp: items[index].timestamp));
              }),
        );
      },
    );
  }
}
