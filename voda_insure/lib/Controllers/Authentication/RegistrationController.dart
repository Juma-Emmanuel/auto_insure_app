import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationRequest {
  Future registrationRequest(int nationalId, String fullname, String country,
      String email, String password, String phonenumber) async {
    RegistrationModel user = RegistrationModel(
      country: country,
      nationalId: nationalId,
      fullName: fullname,
      email: email,
      password: password,
      phoneNumber: phonenumber,
    );
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/user/register";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          // 'nationalId': user.nationalId,
          'fullName': user.fullName,
          'email': user.email,
          'password': user.password,
          'phoneNumber': user.phoneNumber,
          'country': user.country
        }));
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
