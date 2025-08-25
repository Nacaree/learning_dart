int main() {
  // * Midterm sort Exercise
  List num = [];
  num.add(5);
  num.add(2);
  num.add(8);
  num.add(1);
  num.add(4);

  List custom_sort(List un_sorted) {
    List<int> sortedList = List.from(un_sorted);
    for (var i = 0; i < sortedList.length; i++) {
      for (int j = i + 1; j < sortedList.length; j++) {
        if (sortedList[i] > sortedList[j]) {
          int temp = sortedList[i];
          sortedList[i] = sortedList[j];
          sortedList[j] = temp;
        }
      }
    }
    print("Done sorted...");
    return sortedList;
  }

  print(num.length - 1);

  // ? My own BObble
  List cus_bobble(List unsorted) {
    List<int> sortedList = List.from(unsorted);
    for (var i = 0; i < sortedList.length - 1; i++) {
      for (var j = 0; j < sortedList.length - 1; j++) {
        if (sortedList[j] > sortedList[j + 1]) {
          int temp = sortedList[j];
          sortedList[j] = sortedList[j + 1];
          sortedList[j + 1] = temp;
          print(sortedList);
        }
      }
    }
    return sortedList;
  }

  print(num.length);
  print(custom_sort(num));
  print(cus_bobble(num));

  return 0;
}
