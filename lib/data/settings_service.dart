
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService{
  final _isDarkMode = 'isDarkMode';
  final SharedPreferences prefs;

  SettingsService(this.prefs);

  Future<bool> isDark() async{
    final isDark = prefs.getBool(_isDarkMode);
    return  isDark ?? false;
  }

  Future toggleTheme() async{
    await prefs.setBool(_isDarkMode, !(await isDark()));
  }
}