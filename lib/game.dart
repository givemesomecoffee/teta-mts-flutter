import 'dart:io';

import 'package:teta_mts_flutter_21/players/player.dart';
import 'package:teta_mts_flutter_21/teta_mts_flutter_21.dart';

import 'card/card.dart';
import 'card/deck_values.dart';
import 'card/suit.dart';
import 'players/dealer.dart';

const separator = "—--------";
const yes = 'y';
const no = 'n';
const jackpot = 21;

class Game {
  late final List<Card> deck;
  late final Player player;
  late final Dealer dealer;
  var turn = 1;

  Game() {
    deck = generate();
    player = Player("Игрок");
    dealer = Dealer();
  }

  List<Card> generate() {
    var deck = <Card>[];
    for (var suit in Suit.values) {
      for (var card in DeckValues.values) {
        deck.add(Card(card, suit));
      }
    }
    deck.shuffle();
    return deck;
  }

  void start() {
    _initHands();
    while (player.turn(deck)) {
      _printHands();
      if(player.getHandWeight() > jackpot){
        _finishGame();
      } else {
        dealer.setNewGoal(player.getHandWeight());
      }
    }
    if(dealer.shouldOpenCards()){
      stdout.writeln("Ход Дилера");
      stdout.writeln(separator);
      _printHands();
    }
    while (dealer.turn(deck)) {
      _printHands();
      int score = dealer.getHandWeight();
      if(score > jackpot || score == jackpot){
        _finishGame();
      }
    }
    _finishGame();
  }

  void _initHands() {
    stdout.writeln('Раздача:');
    player.distributeCards(deck);
    dealer.distributeCards(deck);
    dealer.setNewGoal(player.getHandWeight());
    _printHands();
  }

  void _printHands() {
    dealer.printHand();
    player.printHand();
    stdout.writeln(separator);
  }

  void _gameResult() {
    final dealerScore = dealer.getHandWeight();
    final playerScore = player.getHandWeight();
    String winner;
    if(playerScore == dealerScore){
      stdout.writeln("Ничья");
      stdout.writeln(separator);
      return;
    } else if (dealerScore > jackpot || (playerScore <= jackpot && playerScore >= dealerScore)) {
      winner = player.name;
    } else {
      winner = dealer.name;
    }
    stdout.writeln("$winner победил");
    stdout.writeln(separator);
  }

  void _askForRestart() {
    var input = "";
    while (!(input == yes || input == no)) {
      stdout.writeln("Играть еще? ($yes/$no)");
      input = stdin.readLineSync()!;
      stdout.writeln(separator);
    }
    if (input == yes) {
      initGame();
    } else {
      exit(0);
    }
  }

  void _finishGame() {
    _gameResult();
    _askForRestart();
  }
}
