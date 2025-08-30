import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  // const delay = Duration(milliseconds: 1000);
  // for (var i = 1; i <= 3; i++) {
  //   await Future.delayed(delay);
  //   print(i);
  // }
  // https://jsonplaceholder.typicode.com/posts/1/comments
  // final post = await fetchPost();
  // print(post.title);
  // print(post.userId);

  // fetchPost().then((p) {
  //   print(p.title);
  //   print(p.userId);
  // })

  // * Feetch from json placeholder
  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

// ? Simulating a delay from a network request
Future<Post> fetchPost() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
  final response = await http.get(url, headers: _getHeaders());
  Map<String, dynamic> data = convert.jsonDecode(response.body);
  return Post(data['title'], data['userId']);
}

class Post {
  String title;
  int userId;
  Post(this.title, this.userId);
}

// Common headers for all requests
Map<String, String> _getHeaders() {
  /* 
  * 'Accept': 'application/json'  // I want JSON
  * 'Accept': 'text/html'        // I want HTML  
  * 'Accept': 'image/png'       // I want PNG images
//* 'Accept': '*/*'           // I accept anything
  // ? Th
  */

  return {'User-Agent': 'Dart HTTP Client', 'Accept': 'application/json'};
}
