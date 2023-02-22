import 'dart:convert';
import 'package:yathra_machine_test/app/modules/login/model/login_resp_model.dart';
import 'package:yathra_machine_test/app/utils/api_endpoints.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  Future<LoginRespModel?> login(String email, String password) async {
    final url = Uri.parse('${ApiEndPoints.kbaseUrl}${ApiEndPoints.loginUrl}');
    var header = {'Content-type': 'application/json'};
    try {
      Map<String, dynamic> reqBody = {
        "email": email,
        "password": password,
      };
      http.Response response = await http.post(
        url,
        body: jsonEncode(reqBody),
        headers: header,
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return LoginRespModel.fromJson(data);
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
