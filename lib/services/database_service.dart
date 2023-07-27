import 'dart:async';
import 'dart:io';
import 'package:chat_app/model/message.dart';
import 'package:chat_app/services/local_database_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import '../model/user.dart';

class DatabaseService {
  DatabaseService( {required this.localDatabase, required this.db, required this.storage});

  final _messagesTable = 'messages';
  final _usersTable = 'users';
  final LocalDatabaseService localDatabase;
  final FirebaseDatabase db;
  final FirebaseStorage storage;

  Future sendMessage(text) async {
    final id = (await getUser()).userId;
    DatabaseReference ref = db.ref(_messagesTable);
    final message = Message(
        userId: id,
        text: text,
        timestamp: DateTime.now().millisecondsSinceEpoch.toString());

    final messageRef = ref.push();
    await messageRef.set(message.toJson());
  }

  Stream<List<Message>> trackMessages() {
    final dbRef = db.ref(_messagesTable);
    return dbRef.onValue.transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        if (data.snapshot.value != null) {
          List<Message> messageList = [];
          final msg = Map<dynamic, dynamic>.from(
              data.snapshot.value as Map<dynamic, dynamic>);
          msg.forEach((key, value) {
            final current = Map<String, dynamic>.from(value);
            messageList.add(Message.fromMap(current));
          });
          messageList.sort((a, b) => a.timestamp.compareTo(b.timestamp));
          sink.add(messageList);
        } else {
          sink.add(List.empty());
        }
      },
    ));
  }

  Future<String> updateAvatar(XFile image) async {
    var imageFile = File(image.path);
    Reference ref = storage.ref().child("images").child(image.name);
    await ref.putFile(imageFile);
    final downLoadUrl = await ref.getDownloadURL();
    final id = (await getUser()).userId;
    final dbRef = db.ref(_usersTable).child(id).child('photoUrl');
    dbRef.set(downLoadUrl);
    return downLoadUrl;
  }

  Future updateName(String text) async {
    final id = (await getUser()).userId;
    final dbRef = db.ref(_usersTable).child(id).child('displayName');
    dbRef.set(text);
  }

  Future addOrUpdateUser() async {
    final user = await getUser();
    DatabaseReference ref = db.ref("$_usersTable/${user.userId}");
    await ref.set(user.toJson());
  }

  Future<User> getUser() async {
    var id = FirebaseAuth.instance.currentUser?.uid;
    final dbRef = db.ref(_usersTable).child(id!);
    final user = await dbRef.get();
    if (user.value != null) {
      final msg =
          Map<dynamic, dynamic>.from(user.value as Map<dynamic, dynamic>);
      final current = User.fromMap(Map<String, dynamic>.from(msg));
      return current;
    }
    return User(userId: id, photoUrl: null, displayName: null);
  }

  Stream<List<User>> trackUsers() {
    final dbRef = db.ref(_usersTable);
    return dbRef.onValue.transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        if (data.snapshot.value != null) {
          List<User> messageList = [];
          final user = Map<dynamic, dynamic>.from(
              data.snapshot.value as Map<dynamic, dynamic>);
          user.forEach((key, value) {
            final current = Map<String, dynamic>.from(value);
            messageList.add(User.fromMap(current));
          });
          localDatabase.addUsers(messageList);
          sink.add(messageList);
        } else {
          sink.add(List.empty());
        }
      },
    ));
  }
}
