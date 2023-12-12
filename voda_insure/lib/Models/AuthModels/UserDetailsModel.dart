class UserDetailsModel {
  final String fullName;
  final String email;
  final String phoneNumber;

  const UserDetailsModel(
      {required this.fullName, required this.email, required this.phoneNumber});

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsModel(
      fullName: json['fullName'] ?? '',
      email: json['email'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
    );
  }
}
