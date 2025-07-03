
class SimpleClass {
  void show(text) => print(text);
}

class AnotherClass implements SimpleClass {
  @override
  void show(text) => print("here is $text");
}


