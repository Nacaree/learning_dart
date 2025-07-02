// ignore_for_file: public_member_api_docs, sort_constructors_first
class Student {
  String? name;
  int? age;
  Student({this.name, this.age});

  set setName(String n) {
    name = n;
  }

  set setAge(int a) {
    age = a;
  }

  String getName() {
    return name!;
  }

  int getAge() {
    return age!;
  }

  void displayStuInfo() {
    print("Name: $name, Age: $age ");
  }
}

class _Subject {
  late String title;
  late double duration;

  _Subject({this.title = "N/A", this.duration = 0.0});

  set Title(String t) => title = t;
  set Duration(double d) => duration = d;

  String getTitle() => title;
  double getDuration() => duration;

  @override
  String toString() => 'title: $title, duration: $duration';
}

void main() {
  _Subject subject01 = new _Subject(title: "flutter", duration: 5.6);
  _Subject subject02 = new _Subject();
  print(subject01);
  print(subject02);
}
