import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:voda_insure/Models/MotorModels/MotorCover.dart';

class GetMotorCover {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  late MotorCover motorCover;
  late Future<MotorCover> motorCoverFuture;

  Future<MotorCover> fetchMotorCover(int motorId) async {
    String? token = await getAuthToken();
    if (token == null) {
      throw Exception('Token is null');
    }

    String mainUrl = MainApi.url;
    String fetchUrl = "$mainUrl/motorcover/getmotorcover/$motorId";

    try {
      final response = await http.get(
        Uri.parse(fetchUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> motorCoverData = json.decode(response.body);

        print(motorCoverData);
        return MotorCover.fromJson(motorCoverData);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during fetch request: $e');
    }
  }
}
