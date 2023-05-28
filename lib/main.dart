import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'feature/chat/chat_screen.dart';
import 'firebase_options.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

Future initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SharedPreferencesService().initUserId();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatScreen(title: 'Chat'),
    );
  }
}
