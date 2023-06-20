import 'package:chat_app/feature/root/root_container.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initServiceLocator();
  await _initFirebase();
  _registerUserIfNeeded();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xff6750a4),
          textTheme: GoogleFonts.alataTextTheme()),
      home: const RootContainer(),
    );
  }
}

Future _initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future _initServiceLocator() async {
  final getIt = GetIt.instance;
  final prefs = await SharedPreferencesService.getInstance();
  final db = DatabaseService(prefs: prefs);
  getIt.registerSingleton<SharedPreferencesService>(prefs);
  getIt.registerSingleton<DatabaseService>(db);
}

void _registerUserIfNeeded() {
  GetIt.instance.get<DatabaseService>().saveNewUser();
}
