import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:async';

class AuthenticationService {

  Future<bool> authenticate(String username, String password) async {
    String url = "https://postman-echo.com/post?username=${username}&password=${password}";
    http.Response response = await http.post(url);
    return response.statusCode == HttpStatus.ok;
  }

}