import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/custom_widgets/custom_textform_feild.dart';
import 'package:yathra_machine_test/app/custom_widgets/cutom_button.dart';
import 'package:yathra_machine_test/app/modules/home/views/home_view.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';
import 'package:yathra_machine_test/app/utils/sizes.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/signup_background.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    sizedHeight(Get.height * 0.08),
                    Text(
                      'Yaathra',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 35,
                      ),
                    ),
                    sizedHeight(Get.height * 0.1),
                    const CustomTextFeild(
                      hintText: 'Full Name',
                      leadinIcon: Icons.person,
                    ),
                    sizedHeight(Get.height * 0.025),
                    const CustomTextFeild(
                      hintText: 'Email Address',
                      leadinIcon: Icons.email,
                    ),
                    sizedHeight(Get.height * 0.025),
                    const CustomTextFeild(
                      hintText: 'Birth Date',
                      leadinIcon: Icons.date_range,
                    ),
                    sizedHeight(Get.height * 0.025),
                    const CustomTextFeild(
                      hintText: 'Mobile Number',
                      leadinIcon: Icons.phone_android,
                      textInputType: TextInputType.number,
                    ),
                    sizedHeight(Get.height * 0.02),
                    // CustomTextFeild(),
                    sizedHeight(Get.height * 0.02),
                    CustomButtonWidget(
                      buttonWidth: double.infinity,
                      buttonText: 'Register',
                      onPressed: () {
                        Get.to(const HomeView());
                      },
                    ),
                    sizedHeight(Get.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Registered Already? ',
                            style: const TextStyle(fontSize: 17),
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: const TextStyle(fontSize: 17),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.back(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
