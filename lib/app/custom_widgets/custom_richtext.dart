// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:yathra_machine_test/app/utils/colors.dart';

// class CustomRichText extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;
//   const CustomRichText({
//     Key? key,
//     required this.text,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       text: TextSpan(
//         text: text,
//         style: TextStyle(
//           color: AppColors.kDarkGrey,
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//         children: <TextSpan>[
//           TextSpan(
//             style: const TextStyle(
//               fontSize: 16,
//             ),
//             recognizer: TapGestureRecognizer()..onTap = onPressed,
//           ),
//         ],
//       ),
//     );
//   }
// }
