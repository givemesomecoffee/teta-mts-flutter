import 'package:chat_app/model/user.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

final knobUsers = [
  const Option(label: "empty_user", value:  User(userId: _uuid, photoUrl: null, displayName: null)),
  const Option(label: "user_with_name", value:  User(userId: _uuid, photoUrl: null, displayName: _name))

];

const _uuid = '123';
const _name = 'name';