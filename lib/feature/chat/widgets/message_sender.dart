import 'package:chat_app/services/database_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class MessageSender extends StatefulWidget {
  const MessageSender({super.key});

  @override
  State<MessageSender> createState() => _MessageSenderState();
}

class _MessageSenderState extends State<MessageSender>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _controller;
  late AnimationController _animationController;

  @override
  void initState() {
    _controller = TextEditingController();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
          RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
            child: IconButton(
                onPressed: () async {
                  _animationController.repeat();
                  await GetIt.instance
                      .get<DatabaseService>()
                      .sendMessage(_controller.text)
                      .whenComplete(() =>
                          {_animationController.reset(), _controller.text = ""});
                },
                icon: const Icon(Icons.send)),
          ),
        ],
      ),
    );
  }
}
