import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/user.dart';

class UserCell extends StatelessWidget {
  const UserCell({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage:
              user.photoUrl != null ? NetworkImage(user.photoUrl!) : null,
        ),
        title:
            Text(user.displayName != null ? user.displayName! : user.userId));
  }
}
