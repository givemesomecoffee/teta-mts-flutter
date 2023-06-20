import 'package:chat_app/feature/settings/widget/profile_avatar.dart';
import 'package:chat_app/feature/settings/widget/edit_button.dart';
import 'package:chat_app/feature/settings/widget/profile_name.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../web_view/web_view_widget.dart';

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
  late WebViewController webviewController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    repository = GetIt.instance.get<DatabaseService>();
    webviewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://flutter.dev'));
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
                    userName: _userName),
                const SizedBox(height: 16),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const WebView(),
                        ),
                      );
                    },
                    child: const Text("webView"))
              ]),
      ),
    );
  }

  void _toggleEditMode(bool isEdit) {
    setState(() {
      _isEdit = isEdit;
    });
  }

  void _updateUserName(String text) async {
    repository.updateName(text);
    setState(() {
      _userName = text;
    });
  }

  void _loadUser() async {
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
