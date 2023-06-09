import 'package:chat_app/services/database_service.dart';
import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:flutter/cupertino.dart';

class Dependencies extends InheritedWidget {
  late final SharedPreferencesService prefsService;
  late final DatabaseService dbService;

  Dependencies(
      {super.key,
      required super.child,
      required this.prefsService,
      required this.dbService});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static Dependencies of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Dependencies>()
        as Dependencies);
  }
}
