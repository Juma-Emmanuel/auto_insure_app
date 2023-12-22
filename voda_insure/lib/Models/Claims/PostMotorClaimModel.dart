class PostMotorClaimModel {
  final String claimDate;
  final String claimStatus;
  final String clashDate;

  final String amount;
  final String claimDescription;
  final String claimType;
  final String claimDocumentLink;

  PostMotorClaimModel({
    required this.claimDocumentLink,
    required this.claimStatus,
    required this.claimType,
    required this.amount,
    required this.claimDate,
    required this.clashDate,
    required this.claimDescription,
  });
}
