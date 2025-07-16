void main() {
  Map<String, dynamic> studentProfile = {};
  // * Adding key and values
  studentProfile["name"] = "Alex";
  studentProfile["age"] = 21;
  studentProfile["gpa"] = 3.5;
  // * Change 'age' key to 22
  studentProfile["age"] = 22;
  print(studentProfile);
  // * Print student's name by access from the map
  print(studentProfile["name"]);
  // * Check if contains key 'major'
  print(studentProfile.containsKey("major"));
}
