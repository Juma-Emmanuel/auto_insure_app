import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';

class RegistrationRequest {
  Future registrationRequest(String email, String password) async {
    RegistrationModel user =
        RegistrationModel(email: email, password: password);
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/register";
    final res = await http.post(Uri.parse(registrationUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': user.email, 'password': user.password}));
    print(res.body);
    if (res.body != null) {}
  }
}
