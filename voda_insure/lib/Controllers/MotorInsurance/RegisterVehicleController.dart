import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/MainAPI.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/MotorModels/Vehicle.dart';

class RegisterVehicleRequest {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future registrationRequest(
    String registrationNumber,
    String chasisNumber,
    String cvNumber,
    String tonnage,
    String make,
    String vehicleValue,
    String place,
    String manufactureYear,
    String driverId,
    String driverName,
    String driverExperience,
  ) async {
    Vehicle vehicle = Vehicle(
      registrationNumber: registrationNumber,
      chasisNumber: chasisNumber,
      cvNumber: cvNumber,
      tonnage: tonnage,
      make: make,
      vehicleValue: vehicleValue,
      place: place,
      manufactureYear: manufactureYear,
      driverId: driverId,
      driverName: driverName,
      driverExperience: driverExperience,
    );
    String? token = await getAuthToken();
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/vehicle/register";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'registrationNumber': vehicle.registrationNumber,
          'chasisNumber': vehicle.chasisNumber,
          'cvNumber': vehicle.cvNumber,
          'tonnage': vehicle.tonnage,
          'make': vehicle.make,
          'vehicleValue': vehicle.vehicleValue,
          'place': vehicle.place,
          'driverId': vehicle.driverId,
          ' driverName': vehicle.driverName,
          'driverExperience': vehicle.driverExperience,
        }));
    if (response.statusCode == 200) {
    } else {}
  }
}
