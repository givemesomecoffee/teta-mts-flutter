import 'package:chat_app/feature/contacts/widget/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/service_providers.dart';

class ContactsScreen extends ConsumerWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ref.watch(usersProvider).when(
        loading: () {
          return const Text("loading");
        },
        error: (err, stack) => Text('Error: $err'),
        data: (users) {
         return users.isEmpty
              ? const Text("no users")
              : UserListContent(users: users);
        },
    ));
  }
}
