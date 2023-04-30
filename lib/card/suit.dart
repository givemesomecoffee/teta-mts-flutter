enum Suit{
  clubs(icon:"\u2663"),
  diamonds(icon:"\u2666"),
  hearts(icon:"\u2665"),
  spades(icon:"\u2660");

  const Suit({
    required this.icon
  });

  final String icon;
}