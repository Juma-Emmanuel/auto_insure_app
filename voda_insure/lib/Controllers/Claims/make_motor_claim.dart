import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/Claims/post_motor_claim_model.dart';

class MakeMotorClaim {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future makeMotorClaim(
    int motorId,
    String claimDate,
    String clashDate,
    String claimStatus,
    String amount,
    String claimDescription,
    String claimType,
    String claimDocumentLink,
  ) async {
    PostMotorClaimModel motorClaim = PostMotorClaimModel(
      claimDate: claimDate,
      clashDate: clashDate,
      claimStatus: claimStatus,
      amount: amount,
      claimDescription: claimDescription,
      claimType: claimType,
      claimDocumentLink: claimDocumentLink,
    );
    String? token = await getAuthToken();
    String mainUrl = MainApi.url;
    String makeClaimUrl = "$mainUrl/motorclaim/makemotorclaim/$motorId";
    final response = await http.post(Uri.parse(makeClaimUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'claimDate': motorClaim.claimDate,
          'clashDate': motorClaim.clashDate,
          'amount': motorClaim.amount,
          'claimType': claimType,
          'claimDescription': motorClaim.claimDescription,
        }));
    if (response.statusCode == 200) {
    } else {}
  }
}
