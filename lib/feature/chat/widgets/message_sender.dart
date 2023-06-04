import 'package:chat_app/di/service_locator.dart';
import 'package:flutter/material.dart';

class MessageSender extends StatefulWidget {
  const MessageSender({super.key});

  @override
  State<MessageSender> createState() => _MessageSenderState();
}

class _MessageSenderState extends State<MessageSender> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Row(
        children: [
          Expanded(
            child: BottomAppBar(
              child: TextField(
                controller: _controller,
                style: const TextStyle(fontSize: 16.0),
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Message',
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0)),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                // TODO: есть ли смысл выносить в initState сервис с бд?
                Dependencies.of(context)
                    .dbService
                    .sendMessage(_controller.text);
                _controller.text = "";
              },
              icon: const Icon(Icons.send))
        ],
      ),
    );
  }
}
