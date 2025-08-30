import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  // Example 1: Request WITHOUT headers (might fail)
  print('=== Request WITHOUT Headers ===');
  await makeRequestWithoutHeaders();

  print('\n=== Request WITH Headers ===');
  await makeRequestWithHeaders();

  print('\n=== Different User-Agent Examples ===');
  await testDifferentUserAgents();

  print('\n=== Different Accept Headers ===');
  await testDifferentAcceptHeaders();
}

// Request without any headers
Future<void> makeRequestWithoutHeaders() async {
  try {
    var url = Uri.https('httpbin.org', '/headers');
    final response = await http.get(url); // No headers specified

    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body);
      print('Server saw these headers from us:');
      print(data['headers']);
    }
  } catch (e) {
    print('Error: $e');
  }
}

// Request with proper headers
Future<void> makeRequestWithHeaders() async {
  try {
    var url = Uri.https('httpbin.org', '/headers');
    final response = await http.get(
      url,
      headers: {
        'User-Agent':
            'Dart HTTP Client', // Identifies what's making the request
        'Accept': 'application/json', // Says we want JSON back
      },
    );

    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body);
      print('Server saw these headers from us:');
      print(data['headers']);
    }
  } catch (e) {
    print('Error: $e');
  }
}

// Test different User-Agent strings
Future<void> testDifferentUserAgents() async {
  final userAgents = [
    'Dart HTTP Client',
    'MyAwesomeApp/1.0',
    'Mozilla/5.0 (like a browser)',
    'Mobile App v2.1',
  ];

  for (final userAgent in userAgents) {
    try {
      var url = Uri.https('httpbin.org', '/user-agent');
      final response = await http.get(url, headers: {'User-Agent': userAgent});

      if (response.statusCode == 200) {
        final data = convert.jsonDecode(response.body);
        print('User-Agent "$userAgent" -> ${data['user-agent']}');
      }
    } catch (e) {
      print('Error with $userAgent: $e');
    }
  }
}

// Test different Accept headers
Future<void> testDifferentAcceptHeaders() async {
  final acceptTypes = [
    'application/json', // I want JSON
    'text/html', // I want HTML
    'application/xml', // I want XML
    '*/*', // I accept anything
  ];

  for (final accept in acceptTypes) {
    try {
      var url = Uri.https('httpbin.org', '/headers');
      final response = await http.get(url, headers: {'Accept': accept});

      if (response.statusCode == 200) {
        print(
          'Accept: "$accept" -> Response received (${response.headers['content-type']})',
        );
      }
    } catch (e) {
      print('Error with $accept: $e');
    }
  }
}

// Example showing what happens with missing headers
Future<void> demonstrateHeaderImportance() async {
  print('\n=== Why Headers Matter ===');

  // Some APIs are strict about User-Agent
  final strictApis = [
    'https://api.github.com/users/octocat', // GitHub API
    'https://httpbin.org/user-agent', // Test endpoint
  ];

  for (final apiUrl in strictApis) {
    print('\nTesting: $apiUrl');

    // Without User-Agent
    try {
      final response1 = await http.get(Uri.parse(apiUrl));
      print('Without User-Agent: ${response1.statusCode}');
    } catch (e) {
      print('Without User-Agent: Failed - $e');
    }

    // With User-Agent
    try {
      final response2 = await http.get(
        Uri.parse(apiUrl),
        headers: {'User-Agent': 'My Dart App'},
      );
      print('With User-Agent: ${response2.statusCode}');
    } catch (e) {
      print('With User-Agent: Failed - $e');
    }
  }
}
