import 'package:chat_app/feature/settings/widget/profile_avatar.dart';
import 'package:chat_app/feature/settings/widget/edit_button.dart';
import 'package:chat_app/feature/settings/widget/profile_name.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:chat_app/services/service_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart' hide PhoneAuthProvider;
import '../utils/get_current_position.dart';
import '../utils/user.dart';
import 'map_screen.dart';
import '../web_view/web_view_widget.dart';

// выглядит как антипаттерн :/
final isProfileEdit = StateProvider((ref) => false);

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  Position? position;
  late DatabaseService repository;
  late WebViewController webviewController;

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
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(profileProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        actions: const [ToggleEditButton()],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(24),
          child: user.when(
            error: (Object error, StackTrace stackTrace) => null,
            loading: () => const Placeholder(),
            data: (user) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  ProfileAvatar(imageUrl: user.photoUrl),
                  const SizedBox(height: 16),
                  Name(userName: getUserName(user)),
                  const SizedBox(height: 16),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const WebView(),
                          ),
                        );
                      },
                      child: const Text("webView")),
                  const SizedBox(height: 16),
                  GestureDetector(onTap: _onGeoTap, child: const Text("map")),
                  const SizedBox(height: 16),
                  GestureDetector(
                      onTap: _signOut, child: const Text("Sign out")),
                ]),
          )),
    );
  }

  void _onGeoTap() async {
    await determinePosition().then((value) => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                MapScreen(position: LatLng(value.latitude, value.longitude)),
          ),
        ));
  }

  Future<void> _signOut() async {
    FirebaseAuth.instance.signOut();
    Navigator.pushNamed(context, '/sign-in');
  }
}
