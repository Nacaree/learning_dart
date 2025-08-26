void main() {
  Map<String, String> planets = {
    "first": "Mercury",
    "second": "Venus",
    "third": "Earth",
    "fourth": "Mars",
    "fifth": "Jupiter",
    "sixth": "Saturn",
    "seventh": "Uranus",
    "eighth": "Neptune",
  };
  planets["Ninth"] = "X01";
  print(planets["third"]);
  print(planets.containsKey("sixth"));
  print(planets);
}
