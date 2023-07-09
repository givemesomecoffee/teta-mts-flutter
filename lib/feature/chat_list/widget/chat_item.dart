import 'package:chat_app/feature/chat/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.date})
      : super(key: key);

  final String title;
  final String subtitle;
  final String date;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          _createRoute(ChatScreen(title: title),
          ),
        );
      },
      child: ListTile(
        leading: const CircleAvatar(child: Text('A')),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(date),
      ),
    );
  }

  Route _createRoute( Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
