// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_validator/form_validator.dart';
// import 'package:get/get.dart';
// import 'package:getwidget/getwidget.dart';
// import 'package:sizer/sizer.dart';
// import 'package:testap/controllers/sign_up_page_controller.dart';
// import 'package:intl/intl.dart';

// class P1 extends StatelessWidget {
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
//             child: TextFormField(
//               autovalidateMode: AutovalidateMode.always,
//               validator: ValidationBuilder()
//                   .required('هذا الحقل مطلوب')
//                   .email('الرجاء ادخال ايميل صحيح')
//                   .build(),
              
//               keyboardType: TextInputType.name,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                 ),
//                 contentPadding: EdgeInsets.all(8),
//                 hintText: "اسم المستخدم",
//                 hintStyle: TextStyle(
//                   fontSize: 15.0.sp,
//                   height: 0.5,
//                   fontFamily: "Kofi",
//                 ),
//                 prefixIcon: Icon(
//                   EvaIcons.personOutline,
//                   size: 25.0.sp,
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
//             child: DateTimePicker(
//               controller: controller.birthDate,
//               autovalidate: true,
//               firstDate: DateTime(1950),
//               lastDate: DateTime.now(),
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide.none,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                 ),
//                 hintText: "تاريخ الميلاد",
//                 hintStyle: TextStyle(
//                   fontSize: wd / 20,
//                   height: 0.5,
//                   fontFamily: "Kofi",
//                 ),
//                 prefixIcon: Icon(
//                   Icons.event,
//                   size: 25.0.sp,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: he / 30),
//         Obx(
//           () => Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Row(
//                 children: [
//                   GFRadio(
//                     size: GFSize.SMALL,
//                     value: true,
//                     onChanged: controller.setGender,
//                     groupValue: controller.gender.value,
//                     inactiveIcon: null,
//                     activeBorderColor: Theme.of(context).primaryColor,
//                     radioColor: Theme.of(context).primaryColor,
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "ذكر",
//                     style: TextStyle(
//                       fontSize: 16.0.sp,
//                       fontFamily: "Kofi",
//                       color: Colors.black,
//                     ),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   GFRadio(
//                     size: GFSize.SMALL,
//                     value: false,
//                     groupValue: controller.gender.value,
//                     onChanged: controller.setGender,
//                     inactiveIcon: null,
//                     activeBorderColor: Theme.of(context).primaryColor,
//                     radioColor: Theme.of(context).primaryColor,
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "أنثى",
//                     style: TextStyle(
//                       fontSize: 16.0.sp,
//                       fontFamily: "Kofi",
//                       color: Colors.black,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
