void main() {
  final hello = greet(name: "kan", age: 12);
  final hello2 = greet(age: 30, name: "SothVi");
  print(hello);
  print(hello2);
}

greet({String? name, required int age}) {
  return "My name is, $name, I am $age";
}
