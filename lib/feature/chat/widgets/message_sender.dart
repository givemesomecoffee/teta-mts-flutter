import 'package:chat_app/di/service_locator.dart';
import 'package:flutter/material.dart';

class MessageSender extends StatelessWidget{
  const MessageSender({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return  Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Row(
        children: [
          Expanded(
            child: BottomAppBar(
              child: TextField(
                controller: controller,
                style: const TextStyle(fontSize: 16.0),
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Message',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 8.0)),
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                Dependencies.of(context).dbService.sendMessage(controller.text);
                controller.text = "";
              },
              icon: const Icon(Icons.send))
        ],
      ),
    );
  }
}