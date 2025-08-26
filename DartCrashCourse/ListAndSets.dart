void main() {
  List<int> scores = [50, 75, 20, 99];
  print(scores[0]);
  scores.shuffle();
  print(scores);
  print(scores.indexOf(20));
  // * Sets
  Set<String> names = {"mario", "luigi", "yoshi"};
  names.add("toad");
  names.add("bowser");
  names.remove("luigi");
  print(names);
}
