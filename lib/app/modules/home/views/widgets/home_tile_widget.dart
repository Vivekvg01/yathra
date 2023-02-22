import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yathra_machine_test/app/utils/colors.dart';
import 'package:yathra_machine_test/app/utils/sizes.dart';

class HomeTileWidget extends GetView {
  // ignore: use_key_in_widget_constructors
  const HomeTileWidget({
    required this.name,
    required this.travellersCount,
    required this.date,
    required this.duration,
    required this.rating,
    required this.amount,
  });

  final String name;
  final int travellersCount;
  final String date;
  final int duration;
  final String rating;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Row(
          children: [
            Container(
              height: Get.height * 0.3,
              width: Get.width * 0.35,
              decoration: BoxDecoration(
                color: AppColors.kLightGrey,
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            sizedWidth(Get.width * 0.03),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                sizedHeight(Get.height * 0.01),
                Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      color: Colors.pink[200],
                    ),
                    Text('$duration Days'),
                  ],
                ),
                sizedHeight(Get.height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.people_outline,
                        color: Colors.pink[200],
                      ),
                      const Text(' 2 Adults')
                    ],
                  ),
                ),
                sizedHeight(Get.height * 0.01),
                Text(
                  '\$$amount',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            sizedWidth(Get.width * 0.07),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink[200],
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.heart,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange[300],
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark_outline,
                          color: AppColors.kWhiteColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
