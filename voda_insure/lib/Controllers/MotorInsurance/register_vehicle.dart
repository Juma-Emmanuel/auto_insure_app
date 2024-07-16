import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/MotorModels/vehicle.dart';

class RegisterVehicleRequest {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future registrationRequest(
    int vehicleId,
    String registrationNumber,
    String make,
    String vehicleValue,
    String place,
    String manufactureYear,
    String driverId,
    String driverName,
    String driverExperience,
  ) async {
    Vehicle vehicle = Vehicle(
      vehicleId: vehicleId,
      registrationNumber: registrationNumber,
      make: make,
      vehicleValue: vehicleValue,
      place: place,
      manufactureYear: manufactureYear,
      driverId: driverId,
      driverName: driverName,
      driverExperience: driverExperience,
    );
    String? token = await getAuthToken();
    String? token1 =
        "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqdW1hZW1tYW51ZWwyM0BvdXRsb29rLmNvbSIsImlhdCI6MTcyMTA0NjUzOSwiZXhwIjoxNzIxMDgyNTM5fQ.8uyimGCZvumJ4aO7VlTiFUp3cjat8JAyS2HDjAVWulE";
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/vehicle/register";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'registrationNumber': vehicle.registrationNumber,
          'vehicleMake': vehicle.make,
          'vehicleValue': vehicle.vehicleValue,
          'place': vehicle.place,
          'manufactureYear': vehicle.manufactureYear,
          'driverId': vehicle.driverId,
          'driverName': vehicle.driverName,
          'driverExperience': vehicle.driverExperience,
        }));
    if (response.statusCode == 201) {
      print('succesful vehicle register');
    } else {
      print(response.statusCode);
    }
  }
}
