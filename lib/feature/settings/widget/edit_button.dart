import 'package:flutter/material.dart';

class ToggleEditButton extends StatelessWidget {
  const ToggleEditButton(
      {super.key, required this.isEdit, required this.callback});

  final bool isEdit;
  final ValueChanged<bool> callback;

  @override
  Widget build(BuildContext context) {
    return isEdit
        ? TextButton(
            onPressed: () => callback(false), child: const Text('Done'))
        : TextButton(
            onPressed: () => callback(true), child: const Text('Edit'));
  }
}
