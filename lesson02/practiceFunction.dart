String getName(name) {
  return "Heel0" + name;
}

// * Nested Functions
void func1() {
  print("Hello 1");
}

void func2() {
  print("Hello 2");
}

void func3() {
  func1();
  func2();
}

// * Exercise
int findMaxNumber(int a, int b) {
  return a > b ? a : b;
}

int findMaxNumber2(int a, int b, int c) {
  return (a > b) ? (a > c ? a : c) : (b > c ? b : c);
}

bool isPositiveNum(int a) => a >= 0;
void showNum(int a, int b) => print("${a + b}");

void showNum2(int a, int b) {
  print(a + b);
}

// * Positional Optional parameter (has an order, forced to follow order)
showProfile(String name, [int age = 0, String gender = "Male"]) {
  print("My name is $name, I am $age, and is $gender");
}

// * Named optional parameter (has no order, can put at any position)
showProfile2(String name, {int age = 0, String gender = "female"}) {
  print("My name is $name, I am $age, and is $gender");
}

void main() {
  // String userName = getName("SothVi");
  // print(userName);
  // func3();
  int maxNumber = findMaxNumber(11, 5);
  int maxNumber2 = findMaxNumber2(11, 20, 12);
  print(maxNumber);
  print(maxNumber2);
  print(isPositiveNum(-1));
  showNum(5, 11);
  showNum2(12, 8);

  showProfile("John");
  showProfile("John", 25);
  showProfile("John", 26, "female");
  print("");
  showProfile2("San Sok");
  showProfile2("San Sok", age: 30);
  showProfile2("San Sok", gender: "male", age: 30);
}
