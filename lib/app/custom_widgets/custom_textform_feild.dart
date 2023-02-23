import 'package:flutter/material.dart';
import 'package:yathra_machine_test/app/utils/sizes.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    required this.leadingIcon,
    this.obscureText = false,
    this.textInputType,
    required this.controller,
    required this.validateText,
  });

  final String hintText;
  final IconData leadingIcon;
  final bool obscureText;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final String validateText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          sizedWidth(10),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              leadingIcon,
              color: Colors.white,
              size: 23,
            ),
          ),
          sizedWidth(10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 8,
              ),
              child: TextFormField(
                obscureText: obscureText,
                maxLines: 1,
                validator: (validator) {
                  if (validator == null || validator.isEmpty) {
                    return validateText;
                  } else {
                    return null;
                  }
                },
                controller: controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 1),
                  hintText: hintText,
                  border: InputBorder.none,
                ),
                keyboardType: textInputType,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
