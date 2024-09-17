import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://localhost/api';

  Future<http.Response> registerUser(String name, String email, String password) async {
    final url = Uri.parse('$baseUrl/auth/register.php');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name, 'email': email, 'password': password}),
    );
    return response;
  }

  Future<http.Response> loginUser(String email, String password) async {
    final url = Uri.parse('$baseUrl/auth/login.php');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );
    return response;
  }
}
