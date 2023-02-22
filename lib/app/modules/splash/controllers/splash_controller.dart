import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/get_started/views/get_started_view.dart';
import 'package:yathra_machine_test/app/modules/home/views/home_view.dart';
import 'package:yathra_machine_test/app/modules/login/controllers/login_controller.dart';

class SplashController extends GetxController {
  final loginController = Get.put(LoginController());
  @override
  void onInit() {
    checkUserLoggedIn();
    super.onInit();
  }

  Future<void> checkUserLoggedIn() async {
    const storage = FlutterSecureStorage();
    final token = await storage.read(key: 'tokenId');
    if (token != null) {
      loginController.setIsLoggedIn(true);
    } else {
      loginController.setIsLoggedIn(false);
    }

    if (loginController.isLoggedIn.value) {
      await Future.delayed(const Duration(seconds: 3));
      Get.off(() => const HomeView());
    } else {
      await Future.delayed(const Duration(seconds: 3));
      Get.off(
        () => const GetStartedView(),
      );
    }
  }
}
