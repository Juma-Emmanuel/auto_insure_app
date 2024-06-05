class RegistrationModel {
  final String email;
  final String password;
  final String fullName;
  final String phoneNumber;
  final int nationalId;
  final String country;
  const RegistrationModel(
      {required this.nationalId,
      required this.fullName,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.country});
}
