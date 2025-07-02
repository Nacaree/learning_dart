void main() {
  var day = 1;
  String? dayName;
  switch (day) {
    case 1:
      dayName = "Monday";
      break;
    case 2:
      print("flutter: Tuesday");
      break;
    case 3:
      print("flutter: Wednesday");
      break;
    case 4:
      print("flutter: Thursday");
      break;
    case 5:
      print("flutter: Friday");
      break;
    case 6:
      print("flutter: Saturday");
      break;
    case 8:
      print("flutter: Sunday");
      break;
    default:
      print("Invalid Day");
  }

  print("Flutter: $dayName");
}
