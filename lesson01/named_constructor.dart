// ignore_for_file: public_member_api_docs, sort_constructors_first
class Student {
  late int id;
  late String name;

  Student({this.id = 0, this.name = "unnamed"});

  Student.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }

  // @override
  // String toString() => 'Student(id: $id, name: $name)';
}

void main() {
  Student stu1 = new Student.fromMap({'id': 10, 'name': "sok"});
  print(stu1.id);
  print(stu1.name);
}
