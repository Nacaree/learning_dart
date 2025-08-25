import 'dart:io';

void main() {
  // * Difference between Keywords Final, Const, var
  var name = "Virak";
  print(name);
  /*
  * if var is a string you can only modify it to another string
  */
  name = "SothVi";
  print(name);
  final name02 = "Sopheak";
  final name0;
  print("enter name: ");
  String? s = stdin.readLineSync();
  name0 = s;
  print(name0);

  print(name02);
  /* 
  ! final is used for when you don't know the final value of the variable
  */
  // name02 = 'fe';
  const age = 12;
  print(age);
  /* 
  ! const is used for when you ** know the final value of the variable
  */
}
