class Vehicle {
  late String name;
  late String model;
  late int year;
  void displayName() {
    print("${name} is the name of the Vehicle");
  }

  Vehicle(String n, String m, int y) {
    // Constructor
    name = n;
    model = m;
    year = y;
  }
}

abstract class Wheel {
  late int numberOfWheels;
  void getWheel();
}

abstract class Car extends Vehicle implements Wheel {
  late double price;
  Car(String n, String m, int y, double p) : super(n, m, y) {
    // Constructor of Subclass
    price = p;
  }
  @override
  void getWheel() {
    print("This is the abstract function");
  }

  void displayCarInfo() {
    print("Name: ${name}, Model: ${model}, Year: ${year}, Price: ${price}");
  }
}

void main() {
  Vehicle v1 = new Vehicle("Car1", "BMW", 2005);
  v1.displayName();
}
