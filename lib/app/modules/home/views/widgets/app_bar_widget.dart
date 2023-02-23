import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';
import 'package:yathra_machine_test/app/utils/sizes.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.kWhiteColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            sizedHeight(Get.height * 0.06),
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: AppColors.kDarkGrey,
                ),
                sizedWidth(Get.width * 0.03),
                Text(
                  'Find your trip',
                  style: TextStyle(
                    color: AppColors.kDarkGrey,
                  ),
                ),
              ],
            ),
            sizedHeight(Get.height * 0.01),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            CupertinoIcons.search,
                            color: AppColors.kRedColor,
                            size: 28.0,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                sizedWidth(Get.width * 0.02),
                CircleAvatar(
                  backgroundColor: AppColors.kRedColor,
                  child: Icon(
                    Icons.filter_list,
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
