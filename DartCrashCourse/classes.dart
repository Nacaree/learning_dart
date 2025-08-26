void main() {
  var noodles = MenuItem('Veg noodles', 9.99);
  var pizza = Pizza(
    ['Cheese', 'Pepperoni', 'Mushrooms'],
    'Pepperoni Pizza',
    14.99,
  );
  // print(noodles.format());
  // print(pizza.format());
  // * testing override toString
  // print(pizza);

  var foods = Collections<MenuItem>("Menu Items", [noodles, pizza]);
  var random = foods.randomItem();
  print(random);
}

class MenuItem {
  String title;
  double price;
  MenuItem(this.title, this.price);

  String format() => "$title --> $price";
  // * Overriding default toString method
  @override
  String toString() => format();
}

class Pizza extends MenuItem {
  List<String> toppings;
  Pizza(this.toppings, super.title, super.price);
  @override
  String format() {
    var formattedToppings = "Contains: ";
    for (final topping in toppings) {
      formattedToppings += "$topping, ";
    }
    return "$title --> \$$price \n$formattedToppings";
  }
}

class Noodles extends MenuItem {
  Noodles(String title, double price) : super(title, price);
}

/*
 * Collections 
 * <T> means type
*/
class Collections<T> {
  String name;
  List<T> data;
  Collections(this.name, this.data);

  T randomItem() {
    data.shuffle();
    return data[0];
  }
}
