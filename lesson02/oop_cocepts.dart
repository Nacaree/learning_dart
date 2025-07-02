class Student {
  String? name;
  int? age;

  Student(this.name, this.age);
  void displayStuInfo() {
    print("Name: $name, Age: $age ");
  }
}

class _Subject {
  late String title;
  late double duration;

  _Subject(this.title, this.duration);
}

void main() {
  Student stu1 = new Student("sothVI", 12);
  // ignore: unused_local_variable
  _Subject sub1 = new _Subject("Flutter", 9.3);
  // stu1.name = "sothVi";
  // stu1.age = 12;
  stu1.displayStuInfo();
}
