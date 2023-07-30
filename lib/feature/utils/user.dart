import '../../model/user.dart';

String getUserName(User user) {
  return user.displayName != null ? user.displayName! : user.userId;
}