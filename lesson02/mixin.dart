mixin Fly {
  void fly() => print("Can fly");
}
mixin Swim {
  void swim() => print("Cad swim");
}

class Duck with Fly, Swim {
  Duck() {
    fly();
    swim();
  }
}

void main() {
  Duck();
}
