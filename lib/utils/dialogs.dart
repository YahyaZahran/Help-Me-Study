import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Dialogs {
  static void pushLoadingDialog(Function onCancel) {
    Get.dialog(
      WillPopScope(
        onWillPop: () async {
          pushAreUSureDialog(
            'الغاء العملية',
            'اضغط على موافق لانهاء العملية',
            () {
              onCancel();
              Get.back(); // for are u sure dialog
              Get.back(); // for the loading dialog
            },
          );
          return false;
        },
        child: AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 10),
              Text(
                'الرجاء الانتظار ...',
                style: TextStyle(
                  fontSize: 16.0.sp,
                  fontFamily: "kofi",
                ),
              )
            ],
          ),
          contentPadding: EdgeInsets.all(20),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static void pushAreUSureDialog(
    String title,
    String description,
    Function onSure,
  ) {
    Get.dialog(
      AlertDialog(
        title: Text(
          title,
          style: TextStyle(
            color: Get.theme.primaryColor,
            fontFamily: 'kofi',
            fontSize: 15.0.sp,
          ),
        ),
        content: Text(
          description,
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 12.0.sp,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'الغاء',
              style: TextStyle(
                color: Get.theme.primaryColor,
                fontFamily: 'kofi',
                fontSize: 12.0.sp,
              ),
            ),
          ),
          TextButton(
            onPressed: onSure,
            child: Text(
              'موافق',
              style: TextStyle(
                color: Get.theme.accentColor,
                fontFamily: 'kofi',
                fontSize: 12.0.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void pushErrorDialog(String errorMsg) {
    Get.dialog(
      AlertDialog(
        title: Text(
          'عذرا ..',
          style: TextStyle(
            color: Get.theme.primaryColor,
            fontFamily: 'kofi',
            fontSize: 15.0.sp,
          ),
        ),
        content: Text(
          errorMsg,
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 12.0.sp,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'حسنا',
              style: TextStyle(
                color: Get.theme.primaryColor,
                fontFamily: 'kofi',
                fontSize: 12.0.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
