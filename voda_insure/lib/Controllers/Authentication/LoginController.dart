import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:voda_insure/Models/AuthModels/LoginModel.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
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
    String registrationUrl = "$mainUrl/users/authenticate2";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'username': user.email,
          'password': user.password,
        }));
    final Map<String, dynamic> responseData = json.decode(response.body);
    if (response.statusCode == 200 &&
        responseData['message'] == 'Authentication successful') {
      if (responseData.containsKey('token')) {
        await saveAuthToken(responseData['token']);
      }
      if (onAuthentication != null) {
        onAuthentication!(true);
      }
    } else {
      if (onAuthentication != null) {
        onAuthentication!(false);
      }
    }
  }

  Future<void> saveAuthToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('jwtToken', token);
  }
}
