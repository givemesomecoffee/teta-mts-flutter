import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'data/settings_service.dart';
import 'main.dart';

class ToggleThemeWidget extends ConsumerWidget {
  const ToggleThemeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
        onPressed: () {
          _toggleTheme(ref);
        },
        icon: const Icon(Icons.sunny));
  }

  Future _toggleTheme(WidgetRef ref) async{
    await GetIt.instance.get<SettingsService>().toggleTheme();
    ref.refresh(isDarkModeProvider);
  }
}
