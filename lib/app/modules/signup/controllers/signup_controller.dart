import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/modules/signup/api/signup_api.dart';

class SignupController extends GetxController {
  @override
  void onInit() {
    precacheImage(
      const ExactAssetImage('assets/signup_background.jpg'),
      Get.context!,
    );
    super.onInit();
  }

  final TextEditingController fistNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void onRegisterButtonClick() {
    if (formkey.currentState!.validate()) {
      SignUpApi().userSignUp(
        fistNameController.text,
        lastNameController.text,
        userNameController.text,
        emailController.text,
        passwordController.text,
        birthDateController.text,
        mobileNumberController.text,
      );
    }
  }
}
