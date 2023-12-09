import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:voda_insure/Models/AuthModels/LoginModel.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRequest {
  Future loginRequest(
    String email,
    String password,
  ) async {
    LoginModel user = LoginModel(
      email: email,
      password: password,
    );
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/authenticate";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'email': user.email,
          'password': user.password,
        }));
    print('Response status code: ${response.statusCode}');
    print('Response body: ${response.body}');
    final Map<String, dynamic> responseData = json.decode(response.body);
    if (response.statusCode == 200 && responseData['status'] == 'success') {
      // print(json.encode(json.decode(response.body)));
      print("succesfull authenticated");
      // String authToken = json.decode(response.body)['token'];
      // await saveAuthToken(authToken);
    } else {
      print(response.reasonPhrase);
      print("imekataaaaaaaa");
    }
  }

  Future<void> saveAuthToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('authToken', token);
  }
}
