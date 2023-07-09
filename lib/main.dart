import 'package:chat_app/feature/root/root_container.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart' hide PhoneAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

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
    final providers = [PhoneAuthProvider()];

    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xff6750a4),
          textTheme: GoogleFonts.alataTextTheme()),
      // home: const RootContainer(),
      initialRoute: FirebaseAuth.instance.currentUser == null ? '/sign-in' : "/home",
      routes: {
        '/sign-in': (context) {
          return SignInScreen(
            providers: providers,
            actions: [
              VerifyPhoneAction((context, state) {
                Navigator.pushNamed(context, '/phone');
              }),

            ],
          );
        },
        '/home': (context) {
          return const RootContainer();
        },
        '/phone': (context) => PhoneInputScreen(
            actions: [
              SMSCodeRequestedAction((context, action, flowKey, phoneNumber) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SMSCodeInputScreen(
                      flowKey: flowKey,
                      actions: [
                        AuthStateChangeAction<SignedIn>((context, state) {
                          _registerUserIfNeeded();
                          Navigator.pushReplacementNamed(context, '/home');
                        }),
                      ],
                    ),
                  ),
                );
              }),
            ]
        ),
      },
    );
  }
}

Future _initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseUIAuth.configureProviders([
  PhoneAuthProvider()]);
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
