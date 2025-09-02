Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

//  * Completing with an Error
Future<void> fetchUserOrder02() {
  // Imagine that this function is fetching user info but encounters a bug.
  return Future.delayed(
    const Duration(seconds: 2),
    () => throw Exception('Logout failed: user ID is invalid'),
  );
}

// * working with async and await
String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

// void main() {
//   // fetchUserOrder();
//   // fetchUserOrder02();
//   // fetchUserOrder03();
//   print('Fetching user order...');
//   print(createOrderMessage());
// }

// * Example 2
Future<String> createOrderMessage02() async {
  var order = await fetchUserOrder03();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder03() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(const Duration(seconds: 2), () => 'Large Latte');

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage02());
}