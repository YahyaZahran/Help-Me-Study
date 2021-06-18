import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testap/pages/posts_page/comments/edit_comment/controller.dart';

class EditCommentSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EditCommentController>();
    return WillPopScope(
      onWillPop: () async {
        Get.delete<EditCommentController>();
        return true;
      },
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'تعديل التعليق',
              style: GoogleFonts.getFont('Almarai'),
            ).paddingAll(8),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.fieldController,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'اكتب تعليقاً',
                      hintStyle: TextStyle(
                        fontFamily: 'tajwal',
                      ),
                    ),
                  ),
                ),
                Obx(
                  () {
                    if (controller.loading.value)
                      return Container(
                        width: 30,
                        height: 30,
                        padding: EdgeInsets.all(4),
                        child: CircularProgressIndicator(),
                      );
                    return IconButton(
                      icon: Icon(Icons.send),
                      onPressed: controller.updateComment,
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
