class UserDetailsModel {
  final int nationalId;
  final String fullName;
  final String email;
  final String phoneNumber;

  const UserDetailsModel(
      {required this.nationalId,
      required this.fullName,
      required this.email,
      required this.phoneNumber});

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsModel(
      nationalId: json['nationalId'],
      fullName: json['fullName'] ?? '',
      email: json['email'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
    );
  }
}
