// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
// import 'package:testap/controllers/sign_up_page_controller.dart';

// class P3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<SignUpPageController>();
//     double wd = MediaQuery.of(context).size.width;
//     double he = MediaQuery.of(context).size.height;
//     return Column(
//       children: [
//         SizedBox(height: he / 40),
//         Center(
//           child: SizedBox(
//             width: 85.0.w,
//             height: 8.0.h,
//             child: TextFormField(
//               controller: controller.password,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                 ),
//                 hintText: "كلمة السر",
//                 hintStyle: TextStyle(
//                     fontSize: 16.0.sp, height: 0.5, fontFamily: "Kofi"),
//                 prefixIcon: Icon(
//                   EvaIcons.eyeOutline,
//                   size: wd / 12,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: he / 25),
//         Center(
//           child: SizedBox(
//             width: 85.0.w,
//             height: 8.0.h,
//             child: TextFormField(
//               controller: controller.passwordConfirmation,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                 ),
//                 hintText: "تأكيد كلمة السر",
//                 hintStyle: TextStyle(
//                     fontSize: 16.0.sp, height: 0.5, fontFamily: "Kofi"),
//                 prefixIcon: Icon(
//                   EvaIcons.eyeOutline,
//                   size: wd / 12,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
