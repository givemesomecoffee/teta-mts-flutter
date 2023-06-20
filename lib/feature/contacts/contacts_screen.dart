import 'package:chat_app/feature/contacts/widget/user_list.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../model/user.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  late Stream<List<User>> users;

  @override
  void initState() {
    super.initState();
    users = GetIt.instance.get<DatabaseService>().trackUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
        ),
        body: StreamBuilder(
          stream: users,
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Text("loading");
            } else if (snapshot.data?.isEmpty == true) {
              return const Text("no users");
            } else {
              return UserListContent(users: snapshot.data!);
            }
          },
        ));
  }
}
