import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/home/views/home_view.dart';
import 'package:yathra_machine_test/app/modules/login/api/login_api.dart';
import 'package:yathra_machine_test/app/modules/login/model/login_resp_model.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    precacheImage(const AssetImage('assets/login_bakground.jpg'), Get.context!);
    super.onInit();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? tokenId;
  RxBool isLoggedIn = false.obs;

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void onLoginButtonClicked() async {
    if (formkey.currentState!.validate()) {
      LoginRespModel? response = await LoginApi().login(
        emailController.text,
        passwordController.text,
      );
      if (response != null) {
        if (response.id != null) {
          tokenId = response.id;
          Get.to(() => const HomeView());
        }
      }
      saveToken();
    }
  }

  void setIsLoggedIn(bool value) {
    isLoggedIn.value = value;
  }

  saveToken() async {
    const storage = FlutterSecureStorage();
    await storage.write(key: 'tokenId', value: tokenId);
    setIsLoggedIn(true);
  }
}
