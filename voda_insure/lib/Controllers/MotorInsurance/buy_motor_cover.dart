import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voda_insure/Models/MotorModels/post_motor_cover_model.dart';

class BuyMotorCover {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future buyMotorCoverRequest(
    int vehicleId,
    String coverExpiryDate,
    String coverRenewalDate,
    String coverType,
  ) async {
    PostMotorCoverModel motorCover = PostMotorCoverModel(
      coverExpiryDate: coverExpiryDate,
      coverRenewalDate: coverRenewalDate,
      coverType: coverType,
    );
    String? token = await getAuthToken();
    String mainUrl = MainApi.url;
    String registrationUrl = "$mainUrl/motorcover/add/$vehicleId";
    final response = await http.post(Uri.parse(registrationUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'coverExpiryDate': motorCover.coverExpiryDate,
          'coverRenewalDate': motorCover.coverRenewalDate,
          'coverType': motorCover.coverType,
        }));
    if (response.statusCode == 200) {
    } else {}
  }
}
