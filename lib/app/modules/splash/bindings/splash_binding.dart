import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/get_started/controllers/get_started_controller.dart';
import 'package:yathra_machine_test/app/modules/home/controllers/home_controller.dart';
import 'package:yathra_machine_test/app/modules/login/controllers/login_controller.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<GetStartedController>(
      () => GetStartedController(),
      fenix: true,
    );
    Get.lazyPut(
      () => LoginController(),
      fenix: true,
    );
  }
}
