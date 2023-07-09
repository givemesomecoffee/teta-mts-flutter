import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class SharedPreferencesService {
  SharedPreferencesService({required this.prefs});

  final _uuid = 'uuid';
  final SharedPreferences prefs;

  Future<String> getId() async {
    final id = prefs.getString(_uuid);
    if (id == null) {
      final newId = const Uuid().v4();
      await prefs.setString(_uuid, newId);
      return newId;
    }
    return id;
  }

  static Future<SharedPreferencesService> getInstance() async {
    return SharedPreferencesService(
        prefs: await SharedPreferences.getInstance());
  }
}
