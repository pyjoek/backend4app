import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:3000/api'; // Replace with your mock API URL

  static Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: jsonEncode({'email': email, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );
    return jsonDecode(response.body);
  }

  static Future<Map<String, dynamic>> egister(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: jsonEncode({'email': email, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );
    return jsonDecode(response.body);
  }

  static Future<List<dynamic>> fetchData(String authToken) async {
    final response = await http.get(
      Uri.parse('$baseUrl/data'),
      headers: {'Authorization': 'Bearer $authToken'},
    );
    return jsonDecode(response.body);
  }

  static Future<dynamic> register(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/register'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // Registration successful
        return jsonEncode("succesful");
      } else {
        // Registration failed
        return jsonEncode("Unsuccesful");
      }
    } catch (e) {
      // Handle error
      print('Error: $e');
      return jsonEncode("Unsuccesful");
    }
  }
}
