class RegisterVehicleModel {
  final String email;
  final String password;
  final String fullName;
  final String phoneNumber;
  final int nationalId;
  final String country;
  const RegisterVehicleModel(
      {required this.nationalId,
      required this.fullName,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.country});
}
