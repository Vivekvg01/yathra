import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/login/controllers/login_controller.dart';
import 'package:yathra_machine_test/app/modules/splash/controllers/splash_controller.dart';
import '../controllers/get_started_controller.dart';

class GetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetStartedController>(
      () => GetStartedController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
      fenix: true,
    );
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
