import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:yathra_machine_test/app/modules/login/views/login_view.dart';
import 'package:yathra_machine_test/app/utils/api_endpoints.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';

class SignUpApi {
  Future<void> userSignUp(
    String firstName,
    String lastName,
    String username,
    String email,
    String password,
    String dob,
    String phoneNumber,
  ) async {
    Map<String, dynamic> reqBody = {
      "request": {
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "email": email,
        "phone": phoneNumber,
        "dob": dob,
        "password": password,
      }
    };

    try {
      final url =
          Uri.parse('${ApiEndPoints.kbaseUrl}${ApiEndPoints.signUpUrl}');

      var header = {'Content-type': 'application/json'};

      http.Response response = await http.post(
        url,
        body: jsonEncode(reqBody),
        headers: header,
      );
      log(response.body);
      if (response.statusCode == 200) {
        Get.showSnackbar(
          GetSnackBar(
            message: 'User registered successfully',
            backgroundColor: AppColors.kGreenColor,
            snackStyle: SnackStyle.FLOATING,
            duration: const Duration(seconds: 2),
          ),
        );
        Get.off(() => const LoginView());
      } else {
        Get.showSnackbar(
          GetSnackBar(
            message: 'Something went wrong!',
            backgroundColor: AppColors.kRedColor,
            snackStyle: SnackStyle.FLOATING,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
