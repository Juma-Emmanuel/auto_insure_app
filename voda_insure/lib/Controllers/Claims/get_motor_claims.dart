import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:voda_insure/Models/Claims/get_motor_claim_model.dart';

class GetMotorClaims {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future<List<GetMotorClaimModel>> fetchMotorClaims(int nationalId) async {
    String? token = await getAuthToken();
    if (token == null) {
      return [];
    }
    String mainUrl = MainApi.url;
    String fetchUrl = "$mainUrl/motorclaim/getmotorclaims/$nationalId";
    try {
      final response = await http.get(
        Uri.parse(fetchUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        List<dynamic> jsonList = json.decode(response.body);

        List<GetMotorClaimModel> motorClaims =
            jsonList.map((json) => GetMotorClaimModel.fromJson(json)).toList();
        return motorClaims;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
