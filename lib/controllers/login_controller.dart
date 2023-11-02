import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginController {
  bool login(String email, String password) {
    if (email == 'a' && password == 'a') {
      return true;
    }
    return false;
    // fetchLogin(email, password);
  }

  Future<void> fetchLogin(String email, String password) async {
    final Uri url = Uri.parse('http://127.0.0.1:8000/login');

    Map<String, String> body = {"email": email, "password": password};

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      print("connection successfull");
    } else {
      print(response.statusCode);
      print(response.body);
    }
  }
}
