import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/MotorModels/vehicle.dart'; // Import your Vehicle model

class GetVehicles {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future<List<Vehicle>> fetchVehiclesByNationalId(int nationalId) async {
    String? token = await getAuthToken();
    if (token == null) {
      return [];
    }
    String mainUrl = MainApi.url;
    String fetchUrl = "$mainUrl/vehicle/getvehicles/$nationalId";
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

        List<Vehicle> vehicles =
            jsonList.map((json) => Vehicle.fromJson(json)).toList();
        print(vehicles);
        return vehicles;
      } else {
        print("no vehicles");
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
