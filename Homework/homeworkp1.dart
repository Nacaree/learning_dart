void main() {
  // 1. given list
  List<String> words = ["Apple", "Banana", "Cherry", "Date", "Avocado"];
  // 2. create a new list called aFruits with only words start with letter A 
  List<String> aFruits = words.where((a) => a.startsWith("A")).toList();
  print("List of fruits only starts with letter a $aFruits");
  // 3. create a  new list called wordLengths that has length of the words from aFruits
  List<int> wordLength = aFruits.map((w) => w.length).toList();
  // 4. Print the wordLengths
  print("The Length of each words in the list $wordLength");
}
