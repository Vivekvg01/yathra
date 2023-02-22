import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/login/views/login_view.dart';

class GetStartedController extends GetxController {
  void gotToLogin() {
    Get.to(
      const LoginView(),
      transition: Transition.rightToLeft,
      duration: const Duration(milliseconds: 700),
    );
  }
}
