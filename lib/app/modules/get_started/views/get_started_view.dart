import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/custom_widgets/cutom_button.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';
import 'package:yathra_machine_test/app/utils/sizes.dart';
import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(
                'assets/get_started_background.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                children: [
                  sizedHeight(Get.height * 0.24),
                  Text(
                    'Yaathra',
                    style: TextStyle(
                      color: AppColors.kWhiteColor,
                      fontSize: 35,
                    ),
                  ),
                  sizedHeight(Get.height * 0.2),
                  Text(
                    "Explore Wonderful places for Tour,\nTravel & Adventure",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.kWhiteColor,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  sizedHeight(Get.height * 0.2),
                  CustomButtonWidget(
                    buttonHeight: Get.height * 0.06,
                    buttonWidth: Get.width * 0.7,
                    buttonText: 'Get Started',
                    onPressed: () {
                      controller.gotToLogin();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
