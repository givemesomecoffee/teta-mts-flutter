import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:news/data/news_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data/settings_service.dart';
import 'features/root/root_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkModeProvider = FutureProvider<bool>(
    (ref) => GetIt.instance.get<SettingsService>().isDark());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initServiceLocator();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDark = ref.watch(isDarkModeProvider).value ?? false;
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode:  isDark ? ThemeMode.dark : ThemeMode.light,

   //   themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: const RootContainer(),
    );
  }
}

Future _initServiceLocator() async {
  final getIt = GetIt.instance;
  getIt.registerSingleton<NewsService>(NewsService());
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SettingsService>(SettingsService(prefs));
}
