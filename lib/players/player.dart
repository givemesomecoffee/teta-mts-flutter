import 'dart:io';
import 'package:teta_mts_flutter_21/players/person.dart';
import '../card/card.dart';
import '../game.dart';

class Player extends Person {
  final _takeCommand = '1';
  final _passCommand = '2';

  Player(super.name);

  @override
  bool decide() {
    String decision = stdin.readLineSync().toString();
    while (!(decision == _takeCommand || decision == _passCommand)) {
      stdout.writeln(_resolveCommands());
      decision = stdin.readLineSync().toString();
      stdout.writeln(decision);
    }
    return decision == _takeCommand;
  }

  @override
  bool turn(List<Card> deck) {
    stdout.writeln("Ход Игрока (${_resolveCommands()}):");
    stdout.writeln(separator);
    return super.turn(deck);
  }

  String _resolveCommands(){
    return '$_takeCommand - Взять, $_passCommand - Пас';
  }
}
