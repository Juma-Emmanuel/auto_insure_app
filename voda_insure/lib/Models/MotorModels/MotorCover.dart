class MotorCover {
  final int motorId;
  final String policyNumber;
  final String coverExpiryDate;
  final String coverRenewalDate;
  final String coverType;

  const MotorCover({
    required this.motorId,
    required this.policyNumber,
    required this.coverExpiryDate,
    required this.coverRenewalDate,
    required this.coverType,
  });
  factory MotorCover.fromJson(Map<String, dynamic> json) {
    return MotorCover(
      motorId: json['motorId'] ?? '',
      policyNumber: json['policyNumber'] ?? '',
      coverExpiryDate: json['coverExpiryDate'] ?? '',
      coverRenewalDate: json['coverRenewalDate'] ?? '',
      coverType: json['coverType'] ?? '',
    );
  }
}
