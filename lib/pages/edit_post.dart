import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/controllers/add_post_page_controller.dart';
import 'package:testap/controllers/edit_post_page_controller.dart';
import 'package:testap/models/post.dart';
import 'package:testap/utils/form_handler/tags_field_handler.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';

class EditPostPage extends StatelessWidget {
  final Post oldPost;

  const EditPostPage({Key key, @required this.oldPost}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EditPostPageController(oldPost));
    return GestureDetector(
      onTap: () {
        var scope = FocusScope.of(context);
        if (!scope.hasPrimaryFocus) scope.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'تعديل منشور',
            style: GoogleFonts.getFont('Tajawal'),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'قم بتعديل المنشور بما يناسب ..',
                        style: GoogleFonts.getFont('Cairo', fontSize: 20.0.sp),
                      ),
                      Text(
                        'سيرى المستخدمين التعديل فور تحديث المنشورات لديهم',
                        style: GoogleFonts.getFont(
                          'Cairo',
                          fontSize: 12.0.sp,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => TextField(
                    controller: controller.form
                        .getFiled<TextFiledHandler>('text')
                        .controller,
                    minLines: 3,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.w400,
                      height: 1.7,
                    ),
                    onChanged: (_) => controller.form
                        .getFiled<TextFiledHandler>('text')
                        .removeErrorText(),
                    decoration: InputDecoration(
                      filled: true,
                      errorText: controller.form
                          .getFiled<TextFiledHandler>('text')
                          .errorText
                          .value,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: .32),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'التاغات',
                    style: GoogleFonts.getFont('Cairo', fontSize: 20.0.sp),
                  ),
                ),
                // SizedBox(height: 5),
                TextField(
                  controller: controller.form
                      .getFiled<TagsFieldHandler>('tags')
                      .fieldController,
                  onSubmitted: (_) =>
                      controller.form.getFiled<TagsFieldHandler>('tags').add(),
                  decoration: InputDecoration(
                    hintText: 'صف منشورك بكلمات مثل رياضيات , علوم',
                    hintStyle: GoogleFonts.tajawal(),
                    contentPadding: EdgeInsets.all(8),
                  ),
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 15),
                Obx(
                  () => Wrap(
                    children: controller.form
                        .getFiled<TagsFieldHandler>('tags')
                        .chips
                        .map(
                          (element) => Padding(
                            padding: EdgeInsets.all(4),
                            child: Chip(
                              label: Text(element),
                              onDeleted: () => controller.form
                                  .getFiled<TagsFieldHandler>('tags')
                                  .delete(element),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: 15),
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
                      onPressed: controller.submit,
                      child: Text(
                        'نشر',
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: "kofi",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
