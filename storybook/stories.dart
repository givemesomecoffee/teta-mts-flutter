import 'package:chat_app/feature/chat/widgets/message_cell.dart';
import 'package:chat_app/feature/contacts/widget/user_cell.dart';
import 'package:chat_app/feature/contacts/widget/user_list.dart';
import 'package:chat_app/feature/settings/widget/edit_button.dart';
import 'package:chat_app/feature/settings/widget/profile_name.dart';
import 'package:chat_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

import 'users_knob.dart';

void main() => runApp(const MyApp());

final _plugins = initializePlugins(
  contentsSidePanel: true,
  knobsSidePanel: true,
  initialDeviceFrameData: DeviceFrameData(
    device: Devices.android.mediumPhone,
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Storybook(
          initialStory: 'Screens/Contacts/Cell',
          plugins: _plugins,
          stories: [
            Story(
                name: 'Screens/Contacts/Cell',
                builder: (context) => SafeArea(
                    child: UserCell(
                        user: context.knobs.options(
                            label: 'user',
                            initial: knobUsers[0].value,
                            options: knobUsers)))),
            Story(
                name: 'Screens/Chat/Cell',
                builder: (context) => SafeArea(
                        child: MessageCell(
                      message: context.knobs.text(label: 'text'),
                      name: context.knobs.text(label: 'name'),
                      timestamp: '1685289162629',
                    ))),
            Story(
                name: 'Screens/Settings/Name',
                builder: (context) => SafeArea(
                        child: Name(
                      isEdit: context.knobs.boolean(label: 'isEdit'),
                      updateUserName: (String value) {},
                      userName: context.knobs.text(label: 'name'),
                    ))),
            Story(
                name: 'Screens/Settings/EditButton',
                builder: (context) => SafeArea(
                      child: ToggleEditButton(
                          isEdit: context.knobs.boolean(label: 'isEditMode'),
                          callback: (bool value) {}),
                    )),
            Story(
                name: 'Screens/Contacts/UserList',
                builder: (context) {
                  final count = context.knobs.sliderInt(label: 'usersCount');
                  return SafeArea(
                      child: UserListContent(
                    users: _getUsers(count),
                  ));
                })
          ]);
}

List<User> _getUsers(int count) {
  return List.generate(
      count,
      (index) =>
          User(userId: index.toString(), photoUrl: null, displayName: null));
}
