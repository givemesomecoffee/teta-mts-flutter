import 'package:chat_app/di/service_locator.dart';
import 'package:chat_app/feature/root/root_container.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferencesService.getInstance();
  await _initFirebase(prefs);
  final db = DatabaseService(prefs: prefs);
  db.saveNewUser();
  runApp(MyApp(prefsService: prefs, databaseService: db));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.prefsService, required this.databaseService});

  final SharedPreferencesService prefsService;
  final DatabaseService databaseService;

  @override
  Widget build(BuildContext context) {
    return Dependencies(
        prefsService: prefsService,
        dbService: databaseService,
        child: MaterialApp(
          title: 'Chat App',
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: const Color(0xff6750a4),
          ),
          home: const RootContainer(),
        ));
  }
}

Future _initFirebase(SharedPreferencesService prefs) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
