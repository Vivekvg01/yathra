import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/home/controllers/home_controller.dart';
import 'package:yathra_machine_test/app/modules/login/controllers/login_controller.dart';
import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(),
      fenix: true,
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
      fenix: true,
    );
  }
}
