import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationRequest {
  Future registrationRequest(
      String name, String email, String password, String phonenumber) async {
    RegistrationModel user = RegistrationModel(
      name: name,
      email: email,
      password: password,
      phonenumber: phonenumber,
    );
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/new";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'name': user.name,
          'email': user.email,
          'password': user.password,
          'phonenumber': user.phonenumber,
        }));
    if (response.statusCode == 200) {
      print(json.encode(json.decode(response.body)));
      print("heloooooooooooooooooooo");
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
