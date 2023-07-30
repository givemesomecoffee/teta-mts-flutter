import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../settings_screen.dart';

class ToggleEditButton extends ConsumerWidget {
  const ToggleEditButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEdit = ref.watch(isProfileEdit);
    return TextButton(
        onPressed: () => ref.read(isProfileEdit.notifier).state = !isEdit,
        child: Text(isEdit ? 'Done' : 'Edit'));
  }
}
