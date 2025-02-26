import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';
import 'package:voda_insure/Models/AuthModels/login_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

typedef AuthCallback = void Function(bool isAuthenticated);

class LoginRequest {
  AuthCallback? onAuthentication;
  Future loginRequest(
    String email,
    String password,
  ) async {
    LoginModel user = LoginModel(
      email: email,
      password: password,
    );
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/user/authenticate";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'username': user.email,
          'password': user.password,
        }));

    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        if (responseData.containsKey('token')) {
          await saveAuthToken(responseData['token']);
          print("token on login");
          print(responseData['token']);
        }
        return true;
      }
    } else {
      print(response.statusCode);
      return false;
    }
  }

  Future<void> saveAuthToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('jwtToken', token);
  }
}
