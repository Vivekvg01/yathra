import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';

class ShowLoaderOverScreen {
  static showLoader() {
    Get.dialog(
      Center(
        child: SpinKitDancingSquare(
          color: AppColors.kRedColor,
        ),
      ),
    );
  }

  static void stopLoader() {
    if (Get.isDialogOpen!) Get.back();
  }
}
