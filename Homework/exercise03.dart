void main() {
  List<String> words = ["Apple", "Banana", "Cherry", "Date", "Avocado"];
  // * Find words That Start with 'A'
  List<String> aFruits = [];
  for (String word in words) {
    if (word.startsWith("A")) {
      aFruits.add(word);
    }
  }
  print("Words starting with 'A': $aFruits");
  // * Find wordsLength of those 'A' words
  List<int> wordLengths = [];
  for (String fruit in aFruits) {
    wordLengths.add(fruit.length);
  }
  print("Lengths of words starting with 'A': $wordLengths");
}
