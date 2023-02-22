import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/home/api/tour_list_api.dart';
import 'package:yathra_machine_test/app/modules/home/model/tour_list_model.dart';
import 'package:yathra_machine_test/app/modules/home/model/tour_model.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getAllDatas();
    super.onInit();
  }

  RxList<TourModel?> tourDatas = <TourModel>[].obs;

  Future<void> getAllDatas() async {
    TourListModel? response = await TourApi().getTourDatas();
    if (response != null) {
      if (response.tourModel != null) {
        tourDatas.value = response.tourModel!;
      }
    }
  }
}
