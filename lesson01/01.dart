void main() {
  // ?  Conditional Statements
  // int a = 10;
  // int b = 20;
  // int c = 30;
  // if (a > b) {
  //   print(a);
  // } else if (a < b) {
  //   print(b);
  // } else if (a > 0 && b >= 0) {
  //   print(b);
  // } else if (a == 0 || c != 0) {
  //   print(b);
  // } else {
  //   print("equal");
  // }

  // ? Ternary Operator
  // int a = 5;
  // bool b = (a > 0 ? true : false);
  // String c = (b ? "Hello" : "hi");
  // int d = a > 0 ? 1 : 2;

  // ? Syntax
  // * (condition) ? TrueCase : FalseCase

  int num1 = 5;
  bool ans = (num1 % 2 == 0)
      ? (num1 >= 10 ? true : false)
      : (num1 >= 10 ? true : false);
  print(ans);

  // ? For Loop
  String message = "Hello dar";
  for (var i = 0; i < 5; i++) {
    print("$i $message");
  }
  List numbers = [0, 1, 2];
  for (var x in numbers) {
    print(x);
  }
  print(" ");
  int order = 1;
  while (order < 5) {
    print(order++);
  }

  do {
    print(order);
    order--;
  } while (order > 0);

  int order1 = 1;
  while (order1 < 10) {
    if (order1 == 5) {
      continue;
    }
    print("order1++");
  }

  int order12 = 1;
  while (order12 < 10) {
    if (order12 == 5) {
      break;
    }
    print("order12++");
  }

  var order13 = 1;
  switch (order) {
    case 1:
      print(order13);
      break;
    case 2:
      print(order13);
      break;
    default:
      print("None");
  }
}
