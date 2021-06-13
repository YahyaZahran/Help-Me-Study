import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testap/controllers/auth_controller.dart';
import 'package:testap/controllers/comments_controller.dart';
import 'package:testap/models/comment.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/pages/posts_page/comments/edit_comment/controller.dart';
import 'package:testap/pages/posts_page/comments/edit_comment/widget.dart';
import 'package:testap/utils/api_time_formatter.dart';
import 'package:testap/utils/dialogs.dart';

class CommentWidget extends StatelessWidget {
  final Comment comment;

  const CommentWidget({Key key, @required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Cover.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comment.authorName,
                        style: GoogleFonts.getFont(
                          'Almarai',
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        formatApiTime(comment.postedAt),
                        style: TextStyle(
                          fontFamily: 'kofi',
                          fontSize: 9.0.sp,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Get.find<AuthController>().authenticatedUser.pk ==
                        comment.author
                    ? PopupMenuButton(
                        padding: EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.more_horiz),
                        ),
                        onSelected: (idx) async {
                          if (idx == 2) {
                            Dialogs.pushAreUSureDialog(
                              'هل انت متأكد ؟',
                              'لن يمكنك التراجع عن هذا الاجراء',
                              () => Get.find<CommentsController>()
                                  .deleteComment(comment),
                            );
                          }
                          if (idx == 1) {
                            Get.put(EditCommentController(comment));
                            Get.bottomSheet(EditCommentSheet());
                          }
                        },
                        itemBuilder: (_) => <PopupMenuItem<int>>[
                          PopupMenuItem(
                            child: Text(
                              'تعديل',
                              style: GoogleFonts.getFont('Tajawal'),
                            ),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text(
                              'حذف',
                              style: GoogleFonts.getFont('Tajawal'),
                            ),
                            value: 2,
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
            Divider(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                comment.text,
                style: GoogleFonts.getFont(
                  'Tajawal',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
