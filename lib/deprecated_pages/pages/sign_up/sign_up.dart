// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:sizer/sizer.dart';
// import 'package:testap/controllers/sign_up_page_controller.dart';

// import 'p1.dart';
// import 'p2.dart';
// import 'p3.dart';

// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   int groupValue = 0;

//   String next = "التالي";
//   int pageNum = 0;

//   PageController c = PageController();

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(SignUpPageController());
//     double wd = MediaQuery.of(context).size.width;
//     double he = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         color: Color(0xffF0F2F5),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           child: ListView(
//             primary: false,
//             children: [
//               Column(
//                 children: [
//                   Container(
//                     width: 100.0.w,
//                     height: 35.0.h,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.contain,
//                         image: AssetImage("assets/images/img2.png"),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: wd,
//                     height: 40.0.h,
//                     child: PageView(
//                       onPageChanged: (value) {
//                         setState(() {
//                           value == 2 ? next = "إرسال" : next = "التالي";
//                           pageNum = value;
//                         });
//                       },
//                       controller: c,
//                       children: [
//                         P1(),
//                         P2(),
//                         P3(),
//                       ],
//                     ),
//                   ),
//                   SmoothPageIndicator(
//                     controller: c,
//                     count: 3,
//                     effect: JumpingDotEffect(
//                       activeDotColor: Theme.of(context).primaryColor,
//                       dotColor: Theme.of(context).accentColor,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: he / 20),
//               Center(
//                 child: Container(
//                   width: 85.0.w,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                         width: 2, color: Theme.of(context).primaryColor),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10),
//                     ),
//                   ),
//                   child: TextButton(
//                       onPressed: () {
//                         if (pageNum != 2) {
//                           c.nextPage(
//                               duration: Duration(milliseconds: 200),
//                               curve: Curves.easeOut);
//                         } else {
//                           controller.submit();
//                         }
//                       },
//                       child: Text(
//                         next,
//                         style: TextStyle(
//                           fontSize: 16.0.sp,
//                           fontFamily: "kofi",
//                           color: Theme.of(context).primaryColor,
//                         ),
//                       )),
//                 ),
//               ),
//               SizedBox(height: 5),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
