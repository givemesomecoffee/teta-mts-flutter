import 'dart:async';
import 'dart:io';
import 'package:chat_app/model/message.dart';
import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../model/user.dart';

class DatabaseService {
  DatabaseService({required this.prefs});

  final _messagesTable = 'messages';
  final _usersTable = 'users';
  final SharedPreferencesService prefs;

  Future sendMessage(text) async {
    final id = await prefs.getId();
    DatabaseReference ref = FirebaseDatabase.instance.ref(_messagesTable);
    final message = Message(
        userId: id,
        text: text,
        timestamp: DateTime.now().millisecondsSinceEpoch.toString());

    final messageRef = ref.push();
    await messageRef.set(message.toJson());
  }

  Stream<List<Message>> trackMessages() {
    final dbRef = FirebaseDatabase.instance.ref(_messagesTable);
    return dbRef.onValue.transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        if (data.snapshot.value != null) {
          List<Message> messageList = [];
          final msg = Map<dynamic, dynamic>.from(
              data.snapshot.value as Map<dynamic, dynamic>);
          print(msg.toString());
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
    Reference ref =
        FirebaseStorage.instance.ref().child("images").child(image.name);
    await ref.putFile(imageFile);
    final downLoadUrl = await ref.getDownloadURL();
    var id = await prefs.getId();
    final dbRef =
        FirebaseDatabase.instance.ref(_usersTable).child(id).child('photoUrl');
    dbRef.set(downLoadUrl);
    return downLoadUrl;
  }

  Future updateName(String text) async {
    var id = await prefs.getId();
    final dbRef = FirebaseDatabase.instance
        .ref(_usersTable)
        .child(id)
        .child('displayName');
    dbRef.set(text);
  }

  Future saveNewUser() async {
    if (!prefs.checkIfUserAuthorized()) {
      final id = await prefs.getId();
      final dbRef = FirebaseDatabase.instance.ref(_usersTable);
      final user = User(userId: id, photoUrl: null, displayName: null);
      final test = dbRef.child(id);
      test.set(user.toJson());
    }
  }

  Future<User?> getUser() async {
    var id = await prefs.getId();
    final dbRef = FirebaseDatabase.instance.ref(_usersTable).child(id);
    final user = await dbRef.get();
    if (user.value != null) {
      final msg =
          Map<dynamic, dynamic>.from(user.value as Map<dynamic, dynamic>);
      print(msg.toString());
      final current = User.fromMap(Map<String, dynamic>.from(msg));
      return current;
    }
    return User(userId: id, photoUrl: null, displayName: null);
  }

  Stream<List<User>> trackUsers() {
    final dbRef = FirebaseDatabase.instance.ref(_usersTable);
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
          sink.add(messageList);
        } else {
          sink.add(List.empty());
        }
      },
    ));
  }
}
