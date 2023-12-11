import 'dart:ffi';

class RegisterVehicleModel {
  final String registrationNumber;
  final String chasisNumber;
  final String cvNumber;
  final String tonnage;
  final String make;
  final String vehicleValue;
  final String place;
  final String manufactureYear;
  final String driverId;
  final String driverName;
  final String driverExperience;
  const RegisterVehicleModel({
    required this.chasisNumber,
    required this.registrationNumber,
    required this.cvNumber,
    required this.tonnage,
    required this.make,
    required this.vehicleValue,
    required this.place,
    required this.manufactureYear,
    required this.driverId,
    required this.driverName,
    required this.driverExperience,
  });
}
