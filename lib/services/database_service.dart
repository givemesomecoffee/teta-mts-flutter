import 'dart:async';
import 'package:chat_app/model/message.dart';
import 'package:chat_app/services/shared_preferences_service.dart';
import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
  final _messagesTable = 'messages';

  Future sendMessage(text) async {
    final id = await SharedPreferencesService().getId();
    DatabaseReference ref = FirebaseDatabase.instance.ref(_messagesTable);
    final message = Message(
        userId: id!,
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
}
