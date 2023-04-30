enum DeckValues {
  two(name: "2", weight: [2]),
  three(name: "3", weight: [3]),
  four(name: "4", weight: [4]),
  five(name: "5", weight: [5]),
  six(name: "6", weight: [6]),
  seven(name: "7", weight: [7]),
  eight(name: "8", weight: [8]),
  nine(name: "9", weight: [9]),
  ten(name: "10", weight: [10]),
  jack(name: "В", weight: [10]),
  queen(name: "Д", weight: [10]),
  king(name: "К", weight: [10]),
  ace(name: "A", weight: [1, 11]);

  const DeckValues({required this.name, required this.weight});

  final String name;
  final List<int> weight;
}
