import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/home/controllers/home_controller.dart';
import 'package:yathra_machine_test/app/modules/signup/controllers/signup_controller.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
      fenix: true,
    );
    Get.lazyPut<SignupController>(
      () => SignupController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
  }
}
