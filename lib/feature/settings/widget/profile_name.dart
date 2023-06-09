import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name(
      {super.key,
      required this.isEdit,
      required this.updateUserName,
      required this.userName});

  final bool isEdit;
  final String userName;
  final ValueChanged<String> updateUserName;

  @override
  Widget build(BuildContext context) {
    return isEdit
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: TextField(
              onSubmitted: (text) {
                updateUserName(text);
              },
            ),
          )
        : Text(
            userName,
            style: const TextStyle(fontSize: 24),
          );
  }
}
