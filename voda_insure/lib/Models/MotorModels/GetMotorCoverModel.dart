class GetMotorCoverModel {
  final int motorId;
  final String policyNumber;
  final String coverExpiryDate;
  final String coverRenewalDate;
  final String coverType;

  GetMotorCoverModel({
    required this.motorId,
    required this.policyNumber,
    required this.coverExpiryDate,
    required this.coverRenewalDate,
    required this.coverType,
  });
  factory GetMotorCoverModel.fromJson(Map<String, dynamic> json) {
    return GetMotorCoverModel(
      motorId: json['motorId'] ?? '',
      policyNumber: json['policyNumber'] ?? '',
      coverExpiryDate: json['coverExpiryDate'] ?? '',
      coverRenewalDate: json['coverRenewalDate'] ?? '',
      coverType: json['coverType'] ?? '',
    );
  }
}
