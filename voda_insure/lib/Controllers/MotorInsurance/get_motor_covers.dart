import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/MotorModels/get_motor_cover_model.dart';

class GetMotorCovers {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future<List<GetMotorCoverModel>> fetchMotorCovers(int nationalId) async {
    String? token = await getAuthToken();
    if (token == null) {
      return [];
    }
    String mainUrl = MainApi.url;
    String fetchUrl = "$mainUrl/motorcover/getmotorcovers/$nationalId";
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

        List<GetMotorCoverModel> motorCovers =
            jsonList.map((json) => GetMotorCoverModel.fromJson(json)).toList();
        return motorCovers;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
