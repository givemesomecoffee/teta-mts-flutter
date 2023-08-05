import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:news/data/news_service.dart';
import 'features/root/root_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await _initServiceLocator();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'News App',
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: const Color(0xff6750a4),
          ),
          home: const RootContainer(),
        );
  }
}

Future _initServiceLocator() async {
  final getIt = GetIt.instance;
  getIt.registerSingleton<NewsService>(NewsService());
}
