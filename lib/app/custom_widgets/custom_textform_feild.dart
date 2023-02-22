import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    required this.leadinIcon,
    this.obscureText = false,
    this.textInputType,
    required this.controller,
    required this.validateText,
  });

  final String hintText;
  final IconData leadinIcon;
  final bool obscureText;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final String validateText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: textInputType,
        style: TextStyle(color: AppColors.kWhiteColor),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          prefixIcon: Icon(
            leadinIcon,
            color: AppColors.kWhiteColor,
          ),
          hintText: hintText,
          fillColor: AppColors.kWhiteColor,
          hintStyle: TextStyle(color: AppColors.kWhiteColor),
          border: InputBorder.none,
        ),
        validator: (validator) {
          if (validator == null || validator.isEmpty) {
            return validateText;
          } else {
            return null;
          }
        },
      ),
    );
  }
}
