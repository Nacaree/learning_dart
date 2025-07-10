void main() {
  int number = 20;
  for (var i = 0; i < number; i++) {
    if (i % 2 != 0) {
      if (i == 13) continue;
      if (i == 17) break;
      print("Flutter: $i");
    }
  }
}
