import 'package:chat_app/feature/chat_list/chat_list_screen.dart';
import 'package:chat_app/feature/contacts/contacts_screen.dart';
import 'package:flutter/material.dart';

import '../settings/settings_screen.dart';

class RootContainer extends StatefulWidget {
  const RootContainer({Key? key}) : super(key: key);

  @override
  State<RootContainer> createState() => _RootContainerState();
}

class _RootContainerState extends State<RootContainer> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const ContactsScreen(),
        const ChatListScreen(),
        const SettingsScreen()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.people_alt),
            label: 'Contacts',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
