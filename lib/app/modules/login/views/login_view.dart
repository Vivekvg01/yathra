import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/custom_widgets/custom_textform_feild.dart';
import 'package:yathra_machine_test/app/custom_widgets/cutom_button.dart';
import 'package:yathra_machine_test/app/modules/home/views/home_view.dart';
import 'package:yathra_machine_test/app/modules/signup/views/signup_view.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';
import 'package:yathra_machine_test/app/utils/sizes.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/login_background.jpg',
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
                    sizedHeight(Get.height * 0.24),
                    Text(
                      'Yaathra',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 35,
                      ),
                    ),
                    sizedHeight(Get.height * 0.1),
                    const CustomTextFeild(
                      hintText: 'Email',
                      leadinIcon: Icons.email,
                    ),
                    sizedHeight(Get.height * 0.025),
                    CustomTextFeild(
                        hintText: 'Password', leadinIcon: Icons.lock),
                    sizedHeight(Get.height * 0.02),
                    // CustomTextFeild(),
                    sizedHeight(Get.height * 0.1),
                    CustomButtonWidget(
                      buttonWidth: double.infinity,
                      buttonText: 'Login',
                      onPressed: () {
                        Get.to(const HomeView());
                      },
                    ),
                    sizedHeight(Get.height * 0.1),
                    RichText(
                      text: const TextSpan(
                        text: 'Forgot Password?',
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    sizedHeight(Get.height * 0.02),
                    RichText(
                      text: TextSpan(
                        text: 'Register',
                        style: const TextStyle(fontSize: 17),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(
                                const SignupView(),
                              ),
                      ),
                    )
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
