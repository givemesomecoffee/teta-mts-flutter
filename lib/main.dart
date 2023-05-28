import 'package:chat_app/di/service_locator.dart';
import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'feature/chat/chat_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferencesService.getInstance();
  await _initFirebase(prefs);
  await _createUserIfNeeded(prefs);
  runApp(MyApp(prefsService: prefs));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.prefsService});

  final SharedPreferencesService prefsService;

  @override
  Widget build(BuildContext context) {
    return Dependencies(
        prefsService: prefsService,
        child: MaterialApp(
          title: 'Chat App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ChatScreen(title: 'Chat'),
        ));
  }
}

Future _initFirebase(SharedPreferencesService prefs) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future _createUserIfNeeded(SharedPreferencesService prefs) async {
  prefs.initUserId();
}
