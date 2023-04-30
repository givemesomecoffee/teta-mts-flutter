import 'package:teta_mts_flutter_21/card/suit.dart';
import 'deck_values.dart';

class Card {
  const Card(this.deckValue, this.suit);

  final DeckValues deckValue;
  final Suit suit;

  List<int> get weight => deckValue.weight;
  String get fullName => deckValue.name + suit.icon;
}
