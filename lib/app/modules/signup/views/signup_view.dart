import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/custom_widgets/custom_textform_feild.dart';
import 'package:yathra_machine_test/app/custom_widgets/cutom_button.dart';
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
              image: ExactAssetImage(
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
                child: Form(
                  key: controller.formkey,
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
                      sizedHeight(Get.height * 0.05),
                      CustomTextFeild(
                        hintText: 'First Name',
                        leadingIcon: Icons.person,
                        controller: controller.fistNameController,
                        validateText: 'please enter your first name',
                      ),
                      sizedHeight(Get.height * 0.025),
                      CustomTextFeild(
                        hintText: 'Last Name',
                        leadingIcon: Icons.person,
                        controller: controller.lastNameController,
                        validateText: 'please enter your last name',
                      ),
                      sizedHeight(Get.height * 0.025),
                      CustomTextFeild(
                        hintText: 'Email Address',
                        leadingIcon: Icons.email,
                        controller: controller.emailController,
                        validateText: 'please enter your email address',
                      ),
                      sizedHeight(Get.height * 0.025),
                      CustomTextFeild(
                        hintText: 'Password',
                        leadingIcon: Icons.lock,
                        controller: controller.passwordController,
                        validateText: 'please enter the password',
                        obscureText: true,
                      ),
                      sizedHeight(Get.height * 0.025),
                      CustomTextFeild(
                        hintText: 'Birth Date',
                        leadingIcon: Icons.date_range,
                        controller: controller.birthDateController,
                        validateText: 'please add your date of birth',
                      ),
                      sizedHeight(Get.height * 0.025),
                      CustomTextFeild(
                        hintText: 'Mobile Number',
                        leadingIcon: Icons.phone_android,
                        textInputType: TextInputType.number,
                        controller: controller.mobileNumberController,
                        validateText: 'please enter your mobile number',
                      ),
                      sizedHeight(Get.height * 0.07),
                      CustomButtonWidget(
                        buttonWidth: double.infinity,
                        buttonText: 'Register',
                        onPressed: () {
                          controller.onRegisterButtonClick();
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
          ),
        ),
      ],
    );
  }
}
