import 'dart:io';
import '../card/card.dart';
import '../card/deck_values.dart';

abstract class Person {
  final List<Card> hand = [];
  String name;

  Person(this.name);

  bool decide();

  void printHand() {
    var text = "${name.substring(0, 1)}: ";
    for (var element in hand) {
      text += "${element.fullName} ";
    }
    stdout.writeln(text);
  }

  int getHandWeight() {
    var sum = 0;
    final cards = hand.map((e) => e.deckValue);
    if (cards.contains(DeckValues.ace)) {
      sum = _getOptimalWeight(cards);
    } else {
      for (var element in cards) {
        sum += element.weight.first;
      }
    }
    return sum;
  }

  void distributeCards(List<Card> deck) {
    _addCard(deck.removeLast());
    _addCard(deck.removeLast());
  }

  bool turn(List<Card> deck) {
    if (decide()) {
      _addCard(deck.removeLast());
      return true;
    } else {
      return false;
    }
  }

  int _getOptimalWeight(Iterable<DeckValues> hand) {
    var sum = 0;
    var acesCount = 0;
    for (var element in hand) {
      if (element == DeckValues.ace) acesCount += 1;
    }
    for (var element in hand) {
      sum += element.weight.last;
    }
    while (acesCount != 0) {
      if (sum <= 21) return sum;
      sum -= 10;
      acesCount -= 1;
    }
    return sum;
  }

  void _addCard(Card card) {
    hand.add(card);
  }
}
