import 'package:flutter/material.dart';
import 'features/root/root_container.dart';

void main() {
  runApp(const MyApp());
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
