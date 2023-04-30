import 'dart:io';
import 'package:teta_mts_flutter_21/players/person.dart';
import '../card/card.dart';
import '../game.dart';

class Dealer extends Person {
  Dealer() : super('Дилер');

  var _goal = 21;
  var areAllCardsOpened = false;

  void setNewGoal(int score) {
    _goal = score;
  }

  @override
  bool decide() {
    return (getHandWeight() < _goal && getHandWeight() < 21);
  }

  @override
  void distributeCards(List<Card> deck) {
    super.distributeCards(deck);
    areAllCardsOpened = hand.length > 2 || hand.first.deckValue.weight.last > 9;
  }

  @override
  void printHand() {
    if (areAllCardsOpened) {
      super.printHand();
    } else {
      stdout.writeln("${name.substring(0, 1)}: ${hand.first.fullName} -");
    }
  }

  bool shouldOpenCards() {
    if (!areAllCardsOpened) {
      areAllCardsOpened = true;
      return true;
    } else {
      return false;
    }
  }

  @override
  bool turn(List<Card> deck) {
    var decision = super.turn(deck);
    if (decision) {
      stdout.writeln("Ход Дилера");
      stdout.writeln(separator);
    }
    return decision;
  }
}
