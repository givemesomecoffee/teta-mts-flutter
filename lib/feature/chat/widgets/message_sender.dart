import 'package:flutter/material.dart';
import '../../../services/database_service.dart';

Padding messageSender(BuildContext context){
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
              DatabaseService().sendMessage(controller.text);
              controller.text = "";
            },
            icon: const Icon(Icons.send))
      ],
    ),
  );
}