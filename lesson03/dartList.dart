void main() {
  List myList = [];
  myList.add(12);
  myList.add("Hi");
  myList.add(true);

  myList.add("dart");
  print(myList);
  print(myList.length);
  myList.contains("dart");
  myList.remove("dart");
  print(myList.isEmpty);
  print(myList);
}
