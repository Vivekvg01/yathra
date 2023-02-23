import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  @override
  void onInit() {
    precacheImage(
      const ExactAssetImage('assets/signup_background.jpg'),
      Get.context!,
    );
    super.onInit();
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void onRegisterButtonClick() {
    if (formkey.currentState!.validate()) {}
  }
}
