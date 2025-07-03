class Animal {
  late String name;
  late int age;
  late int? numOfLegs;

  Animal(this.name, this.age, {this.numOfLegs});

  void displayInfo() {
    print("Name: ${name}, Age: ${age}, How many Legs: ${numOfLegs}");
  }
}

abstract class Walking {
  void animalWalk();
}

class Dog extends Animal implements Walking {
  Dog(String name, int age, {int? numOfLegs2})
    : super(name, age, numOfLegs: numOfLegs2);

  @override
  void animalWalk() => print("$name is walking...");
}

class Cat extends Animal implements Walking {
  Cat(String name, int age, {int? numOfLegs3})
    : super(name, age, numOfLegs: numOfLegs3);

  @override
  void animalWalk() => print("$name is walking...");
}

void main() {
  Cat c1 = new Cat("Luna", 4);
  Cat c2 = new Cat("Luna", 4, numOfLegs3: 3);
  c1.displayInfo();
  c2.displayInfo();
  c1.animalWalk();
}
