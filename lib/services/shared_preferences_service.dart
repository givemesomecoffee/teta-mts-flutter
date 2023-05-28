import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class SharedPreferencesService {
  SharedPreferencesService({required this.prefs});

  final _uuid = 'uuid';
  final SharedPreferences prefs;

  Future<String?> getId() async {
    return prefs.getString(_uuid);
  }

  Future initUserId() async {
    final id = prefs.getString(_uuid);
    if (id == null) {
      await prefs.setString(_uuid, const Uuid().v4());
    }
  }

  static Future<SharedPreferencesService> getInstance() async {
    return SharedPreferencesService(
        prefs: await SharedPreferences.getInstance());
  }
}
