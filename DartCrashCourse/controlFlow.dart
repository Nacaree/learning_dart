void main() {
  List<int> scores = [50, 75, 20, 99];
  for (int i = 0; i < 5; i++) {
    print("Current Value of i is $i");
  }
  for (int score in scores.where((s) => s > 50)) {
    print(score);
  }
}
