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
  });

  final String hintText;
  final IconData leadinIcon;
  final bool obscureText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        style: TextStyle(color: AppColors.kWhiteColor),
        decoration: InputDecoration(
          prefixIcon: Icon(
            leadinIcon,
            color: AppColors.kWhiteColor,
          ),
          hintText: hintText,
          fillColor: AppColors.kWhiteColor,
          hintStyle: TextStyle(color: AppColors.kWhiteColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
