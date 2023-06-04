import 'package:chat_app/feature/settings/widget/profile_avatar.dart';
import 'package:chat_app/feature/settings/widget/edit_button.dart';
import 'package:chat_app/feature/settings/widget/profile_name.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:flutter/material.dart';
import '../../di/service_locator.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isEdit = false;
  String? _avatarUrl;
  String _userName = '';
  late DatabaseService repository;
  bool isLoading = true;

  @override
  didChangeDependencies() {
    repository = Dependencies.of(context).dbService;
    super.didChangeDependencies();
    _loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        actions: [ToggleEditButton(isEdit: _isEdit, callback: _toggleEditMode)],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(24),
        child: isLoading
            ? const Placeholder()
            : Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                const SizedBox(height: 40),
                ProfileAvatar(imageUrl: _avatarUrl),
                const SizedBox(height: 16),
                Name(
                    isEdit: _isEdit,
                    updateUserName: _updateUserName,
                    userName: _userName)
              ]),
      ),
    );
  }

  _toggleEditMode(bool isEdit) {
    setState(() {
      _isEdit = isEdit;
    });
  }

  _updateUserName(String text) async {
    repository.updateName(text);
    setState(() {
      _userName = text;
    });
  }

  _loadUser() async {
    final user = await repository.getUser();
    setState(() {
      _userName = user?.displayName != null ? user!.displayName! : user!.userId;
      if (user.photoUrl != null) {
        _avatarUrl = user.photoUrl!;
      }
      isLoading = false;
    });
  }
}
