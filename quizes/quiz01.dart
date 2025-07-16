class User {
  String? name;
  int? age;
  int Id;

  User({this.name, this.age, this.Id = 1});
  // * Setter & Getter
  set setName(String n) => name = n;
  set setAge(int a) => age = a;
  set setId(int i) => Id = i;

  String? getName() => name;
  int? getAge() => age;
  int getId() => Id;

  @override
  String toString() =>
      """
  Name: $name
  Age: $age
  Id: $Id 
      """;
}

// ! After Ternary Part
class Shape {
  double getArea() => 0.0;
}

class Square extends Shape {
  late double side;
  @override
  double getArea() {
    return side * side;
  }
}

void main() {
  User user01 = User(name: "sok", age: 12);
  User user02 = User(name: "Virak", age: 13, Id: 2);
  User user03 = User(name: "SothVi", age: 14, Id: 3);
  User user04 = User(name: "Theavit", age: 15, Id: 4);
  // print(user01.getAge());
  // print(user04);
  List students = [];
  students.add(user01);
  students.add(user02);
  students.add(user03);
  students.add(user04);
  for (dynamic stu in students) {
    print(stu);
  }
  // ! Ternary Part
  int score = 85;
  String grade = score >= 50 ? "passed" : "failed";
  print(grade);
}
