void oddEven() {
  for (var i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      print("Even: $i");
    } else {
      print("Odd: $i");
    }
  }
}

void fizzBuzz() {
  for (var i = 1; i <= 100; i++) {
    print(
      (i % 3 == 0)
          ? "Fizz"
          : (i % 5 == 0)
          ? "Buzz"
          : i,
    );
  }
}

bool checkFour(int number) => number % 4 == 0;

void main() {
  // oddEven();
  fizzBuzz();
  print(checkFour(3));
}
