import 'package:chat_app/data/local/db_user.dart';
import 'package:chat_app/model/user.dart';
import 'package:isar/isar.dart';

class LocalDatabaseService {
  LocalDatabaseService({required this.isar});

/*  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
  [DbUserSchema],
  directory: dir.path,
  );*/

  final Isar isar;

  void addUsers(List<User> users) async {
    await isar.writeTxn(() async {
      for (var element in users) {
        await isar.dbUsers.put(toDBUser(element));
      }
    });
  }

  DbUser toDBUser(User user) {
    var newUser = DbUser();
    newUser.userID = user.userId;
    newUser.photoUrl = user.photoUrl;
    newUser.displayName = user.displayName;
    return newUser;
  }
}
