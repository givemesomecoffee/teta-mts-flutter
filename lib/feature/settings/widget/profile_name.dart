import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../../../services/database_service.dart';
import '../../../services/service_providers.dart';
import '../settings_screen.dart';

class Name extends ConsumerWidget {
  const Name({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEdit = ref.watch(isProfileEdit);
    return isEdit
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: TextField(
              onSubmitted: (text) {
                _updateUserName(text, ref);
              },
            ),
          )
        : Text(
            userName,
            style: const TextStyle(fontSize: 24),
          );
  }

  void _updateUserName(String text, WidgetRef ref) async {
    await GetIt.instance.get<DatabaseService>().updateName(text);
    ref.invalidate(profileProvider);
  }
}
