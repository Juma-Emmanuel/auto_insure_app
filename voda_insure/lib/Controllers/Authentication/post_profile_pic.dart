import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:voda_insure/Controllers/main_api.dart';

class PostProfilePic {
  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwtToken');
  }

  Future<void> uploadFile(int userId, File file) async {
    String? token = await getAuthToken();
    if (token == null) {
      throw Exception('Token is null');
    }

    String mainUrl = MainApi.url;
    String profilepicUrl = "$mainUrl/files/update/$userId";
    var url = Uri.parse(profilepicUrl);

    var request = http.MultipartRequest('PUT', url);

    var multipartFile = await http.MultipartFile.fromPath('file', file.path);
    request.files.add(multipartFile);
    request.headers['Authorization'] = 'Bearer $token';
    try {
      var response = await request.send();

      if (response.statusCode == 201) {
      } else {}
    } catch (e) {
      throw Exception('Error uploading profile picture: $e');
    }
  }
}
