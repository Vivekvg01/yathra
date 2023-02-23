import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/home/views/widgets/app_bar_widget.dart';
import 'package:yathra_machine_test/app/modules/home/views/widgets/home_tile_widget.dart';
import 'package:yathra_machine_test/app/utils/sizes.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBarWidget(),
      ),
      body: Obx(
        () => SafeArea(
          child: controller.isLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  padding: const EdgeInsets.all(20.0),
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (ctx, index) {
                        return HomeTileWidget(
                          name: controller.tourDatas[index]?.name ?? '',
                          travellersCount:
                              controller.tourDatas[index]?.travellersCount ?? 0,
                          date: controller.tourDatas[index]?.date ?? '',
                          duration: controller.tourDatas[index]?.duration ?? 0,
                          rating: controller.tourDatas[index]!.rating ?? '',
                          amount: controller.tourDatas[index]!.amount ?? '',
                        );
                      },
                      separatorBuilder: (_, __) =>
                          sizedHeight(Get.height * 0.02),
                      itemCount: controller.tourDatas.length,
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
