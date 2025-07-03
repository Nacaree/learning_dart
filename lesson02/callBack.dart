dynamic input(int a, int b, {required dynamic Function(int a, int b) calc}) {
  return calc(a, b);
}

int sum(int a, int b) {
  return a + b;
}

int multi(int a, int b) {
  return a * b;
}

double? divide(int a, int b) {
  return b == 0 ? null : a / b;
}

int subtract(int a, int b) {
  return a - b;
}

void displayInfo(String info, Function(String) display) {
  display(info);
}

void displayInformation(String info) {
  print(info);
}

void main() {
  print(input(10, 5, calc: multi));
  print(input(10, 5, calc: subtract));
  print(input(5, 2, calc: divide));
  print(input(10, 0, calc: divide));
  print(
    input(
      10,
      5,
      calc: (a, b) {
        return a + b;
      },
    ),
  );
  displayInfo("NAME", displayInformation);
}
