import 'package:date_time_picker/date_time_picker.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/controllers/sign_up_page_controller.dart';
import 'package:testap/utils/form_handler/radio_group_handler.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';

class PersonalForm extends StatelessWidget {
  final controller = Get.find<SignUpPageController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'الرجاء ادخال معلوماتك الشخصية',
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 20.0.sp,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'تأكد من صحة هذه المعلومات .. لانها ستحسن تواصلك مع الاخرين و ظهورك في نتائج البحث',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'cairo',
                      fontSize: 13.0.sp,
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.USERNAME)
                  .controller,
              onChanged: (_) => controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.USERNAME)
                  .removeErrorText(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                errorText: controller.form
                    .getFiled<TextFiledHandler>(SignUpPageController.USERNAME)
                    .errorText
                    .value,
                prefixIcon: Icon(Icons.person_outline),
                filled: true,
                fillColor: Colors.white,
                hintText: 'اسم المستخدم',
                hintStyle: TextStyle(
                  fontSize: 15.0.sp,
                  fontFamily: "Kofi",
                ),
              ),
            ),
            SizedBox(height: 5),
            DropdownButtonFormField(
              value:
                  controller.form.getFiled<RadioGroupHandler>(SignUpPageController.GENDER).value,
              decoration: InputDecoration(
                filled: true,
                errorText: controller.form
                    .getFiled<RadioGroupHandler>(SignUpPageController.GENDER)
                    .errorText
                    .value,
                fillColor: Colors.white,
                hintText: 'الجنس',
                hintStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                prefixIcon: Icon(EvaIcons.heartOutline),
              ),
              items: ['ذكر', 'انثى']
                  .map(
                    (val) => DropdownMenuItem(
                      child: Text(
                        val,
                        style: TextStyle(
                          fontFamily: 'kofi',
                          fontSize: 12.0.sp,
                        ),
                      ),
                      value: val == 'ذكر',
                    ),
                  )
                  .toList(),
              onChanged:
                  controller.form.getFiled<RadioGroupHandler>(SignUpPageController.GENDER).setFlag,
            ),
            SizedBox(height: 5),
            TextFormField(
              textDirection: TextDirection.ltr,
              controller: controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.PHONE)
                  .controller,
              onChanged: (_) => controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.PHONE)
                  .removeErrorText(),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                errorText: controller.form
                    .getFiled<TextFiledHandler>(SignUpPageController.PHONE)
                    .errorText
                    .value,
                prefixIcon: Icon(EvaIcons.phoneOutline),
                filled: true,
                fillColor: Colors.white,
                hintText: 'رقم جوالك',
                hintStyle: TextStyle(
                  fontSize: 15.0.sp,
                  fontFamily: "Kofi",
                ),
              ),
            ),
            SizedBox(height: 5),
            DateTimePicker(
              controller: controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.BIRTH_DATE)
                  .controller,
              onChanged: (_) => controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.BIRTH_DATE)
                  .removeErrorText(),
              autovalidate: true,
              firstDate: DateTime(1950),
              lastDate: DateTime.now(),
              decoration: InputDecoration(
                filled: true,
                errorText: controller.form
                    .getFiled<TextFiledHandler>(SignUpPageController.BIRTH_DATE)
                    .errorText
                    .value,
                fillColor: Colors.white,
                hintText: "تاريخ الميلاد",
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: "Kofi",
                ),
                prefixIcon: Icon(Icons.event_outlined),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 85.0.w,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      controller.pageController.jumpToPage(1);
                    },
                    child: Text(
                      'التالي',
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontFamily: "kofi",
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
