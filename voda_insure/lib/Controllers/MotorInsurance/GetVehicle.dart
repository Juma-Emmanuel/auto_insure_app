import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/AuthModels/UserDetailsModel.dart';
import 'package:voda_insure/Models/MotorModels/Vehicle.dart';

class GetVehicle {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  late Vehicle vehicle;
  late Future<Vehicle> vehicleFuture;

  Future<Vehicle> fetchVehicle(int vehicleId) async {
    String? token = await getAuthToken();
    if (token == null) {
      throw Exception('Token is null');
    }

    String mainUrl = MainApi.url;
    String fetchUrl = "$mainUrl/vehicle/getvehicle/$vehicleId";

    try {
      final response = await http.get(
        Uri.parse(fetchUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> vehicleData = json.decode(response.body);

        return Vehicle.fromJson(vehicleData);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during fetch request: $e');
    }
  }
}
