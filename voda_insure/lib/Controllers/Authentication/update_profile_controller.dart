import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:voda_insure/Models/AuthModels/RegistrationModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/AuthModels/UserDetailsModel.dart';

class UpdateProfileRequest {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future updateRequest(
      int nationalId, String fullname, String email, String phonenumber) async {
    String? token = await getAuthToken();
    if (token == null) {
      throw Exception('Token is null');
    }

    UserDetailsModel user = UserDetailsModel(
      nationalId: nationalId,
      fullName: fullname,
      email: email,
      phoneNumber: phonenumber,
    );
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/user/$nationalId";
    final response = await http.put(Uri.parse(registrationUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'fullName': user.fullName,
          'email': user.email,
          'phoneNumber': user.phoneNumber,
        }));
    if (response.statusCode == 200) {
      
      return true;
    } else {
   
      return false;
    }
  }
}
