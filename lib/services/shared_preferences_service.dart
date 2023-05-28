import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class SharedPreferencesService{
  final _uuid = 'uuid';

  Future<String?> getId() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_uuid);
  }

  Future initUserId() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final id = prefs.getString(_uuid);
    if(id == null){
      await prefs.setString(_uuid,const Uuid().v4());
    }
  }
}