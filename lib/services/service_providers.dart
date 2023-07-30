import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../model/user.dart';
import 'database_service.dart';

final profileProvider = FutureProvider.autoDispose<User>((ref) {
  final repository = GetIt.instance.get<DatabaseService>();
  return repository.getUser();
});

final messagesProvider = StreamProvider.autoDispose((ref) {
  final repository = GetIt.instance.get<DatabaseService>();
  return repository.trackMessages();
});

final usersProvider = StreamProvider.autoDispose((ref) {
  final repository = GetIt.instance.get<DatabaseService>();
  return repository.trackUsers();
});
