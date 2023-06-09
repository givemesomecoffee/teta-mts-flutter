import 'package:chat_app/feature/contacts/widget/user_cell.dart';
import 'package:flutter/cupertino.dart';
import '../../../model/user.dart';

class UserListContent extends StatelessWidget {
  const UserListContent({super.key, required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return UserCell(user: users[index]);
          }),
    );
  }
}
