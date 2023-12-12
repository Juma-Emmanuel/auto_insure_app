import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/AuthModels/UserDetailsModel.dart';

class UserProfileController {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  late UserDetailsModel userDetailsModel;
  late Future<UserDetailsModel> userFuture;

  Future<UserDetailsModel> fetchUserDetails() async {
    String? token = await getAuthToken();
    if (token == null) {
      throw Exception('Token is null');
    }

    String mainUrl = MainApi.url;
    String fetchUrl = "$mainUrl/users/getuser";

    try {
      final response = await http.get(
        Uri.parse(fetchUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> userData = json.decode(response.body);

        return UserDetailsModel.fromJson(userData);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during fetch request: $e');
    }
  }
}
