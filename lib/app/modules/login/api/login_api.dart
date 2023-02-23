import 'dart:convert';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/custom_widgets/spinkit_loader.dart';
import 'package:yathra_machine_test/app/modules/home/bindings/home_binding.dart';
import 'package:yathra_machine_test/app/modules/home/views/home_view.dart';
import 'package:yathra_machine_test/app/modules/login/model/login_resp_model.dart';
import 'package:yathra_machine_test/app/utils/api_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:yathra_machine_test/app/utils/colors.dart';

class LoginApi {
  Future<LoginRespModel?> login(String email, String password) async {
    ShowLoaderOverScreen.showLoader();
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
        ShowLoaderOverScreen.stopLoader();
        Get.offAll(
          const HomeView(),
          binding: HomeBinding(),
        );
        return LoginRespModel.fromJson(data);
      } else {
        ShowLoaderOverScreen.stopLoader();
        Get.showSnackbar(
          GetSnackBar(
            message: 'Something went wrong!',
            backgroundColor: AppColors.kRedColor,
            duration: const Duration(seconds: 3),
            snackStyle: SnackStyle.FLOATING,
          ),
        );
      }
    } catch (e) {
      throw Exception(e);
    }
    return null;
  }
}
