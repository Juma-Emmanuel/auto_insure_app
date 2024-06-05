class GetMotorClaimModel {
  final String claimDate;
  final String claimStatus;
  final String clashDate;
  final String amount;
  final String claimDescription;
  final String claimType;
  final String claimDocumentLink;
  final int motorClaimId;
  final String policyNumber;
  final String expiryDate;
  final int nationalId;
  final String make;
  final String driverId;
  final String driverName;

  GetMotorClaimModel({
    required this.claimDocumentLink,
    required this.claimStatus,
    required this.claimType,
    required this.amount,
    required this.claimDate,
    required this.expiryDate,
    required this.clashDate,
    required this.claimDescription,
    required this.nationalId,
    required this.motorClaimId,
    required this.make,
    required this.policyNumber,
    required this.driverId,
    required this.driverName,
  });

  factory GetMotorClaimModel.fromJson(Map<String, dynamic> json) {
    return GetMotorClaimModel(
      motorClaimId: json['motorClaimId'] ?? '',
      policyNumber: json['policyNumber'] ?? '',
      claimType: json['coverType'] ?? '',
      nationalId: json['nationalId'] ?? '',
      claimDate: json['claimDate'] ?? '',
      expiryDate: json['expiryDate'] ?? '',
      clashDate: json['clashDate'] ?? '',
      claimStatus: json['claimStatus'] ?? '',
      claimDocumentLink: json['clashDocumentLink'] ?? '',
      make: json['make'] ?? '',
      amount: json['amount'] ?? '',
      claimDescription: json['claimDescription'] ?? '',
      driverId: json['driverId'] ?? '',
      driverName: json['driverName'] ?? '',
    );
  }
}
