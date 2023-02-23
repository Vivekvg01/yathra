import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/get_started/views/get_started_view.dart';
import 'package:yathra_machine_test/app/modules/home/api/tour_list_api.dart';
import 'package:yathra_machine_test/app/modules/home/model/tour_list_model.dart';
import 'package:yathra_machine_test/app/modules/home/model/tour_model.dart';
import 'package:yathra_machine_test/app/modules/login/controllers/login_controller.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getAllDatas();
    super.onInit();
  }

  RxBool isLoading = false.obs;

  RxList<TourModel?> tourDatas = <TourModel>[].obs;

  Future<void> getAllDatas() async {
    isLoading(true);
    TourListModel? response = await TourApi().getTourDatas();
    if (response != null) {
      if (response.tourModel != null) {
        tourDatas.value = response.tourModel!;
      }
    }
    isLoading(false);
  }

  void logout() async {
    final loginController = Get.put(LoginController());
    const storage = FlutterSecureStorage();
    await storage.delete(key: 'tokenId');
    loginController.setIsLoggedIn(false);
    Get.offAll(const GetStartedView());
  }
}
