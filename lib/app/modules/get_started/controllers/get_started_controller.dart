import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/login/views/login_view.dart';

class GetStartedController extends GetxController {
  @override
  void onInit() {
    precacheImage(
      const ExactAssetImage('assets/get_started_background.jpg'),
      Get.context!,
    );
    super.onInit();
  }

  void gotToLogin() {
    Get.to(
      () => const LoginView(),
    );
  }
}
