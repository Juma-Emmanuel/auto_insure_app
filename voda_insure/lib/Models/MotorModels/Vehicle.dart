class Vehicle {
  final int vehicleId;
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
  Vehicle({
    required this.vehicleId,
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

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      vehicleId: json['vehicleId'] ?? '',
      registrationNumber: json['registrationNumber'] ?? '',
      chasisNumber: json['chasisNumber'] ?? '',
      cvNumber: json['cvNumber'] ?? '',
      tonnage: json['tonnage'] ?? '',
      make: json['make'] ?? '',
      vehicleValue: json['vehicleValue'] ?? '',
      place: json['place'] ?? '',
      manufactureYear: json['manufactureYear'] ?? '',
      driverId: json['driverId'] ?? '',
      driverName: json['driverName'] ?? '',
      driverExperience: json['driverExperience'] ?? '',
    );
  }
}
