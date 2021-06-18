import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/controllers/auth_controller.dart';
import 'package:testap/controllers/comments_controller.dart';
import 'package:testap/controllers/edit_post_page_controller.dart';
import 'package:testap/controllers/posts_controller.dart';
import 'package:testap/models/post.dart';
import 'package:testap/pages/edit_post.dart';
import 'package:testap/pages/posts_page/comments/comments_page.dart';
import 'package:testap/utils/api_time_formatter.dart';
import 'package:testap/utils/dialogs.dart';

import '../../color_pallete.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Cover.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 75,
                        height: 75,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.authorName,
                            style: GoogleFonts.getFont(
                              'Almarai',
                              fontSize: 14.0.sp,
                            ),
                          ),
                          Text(
                            'جامعة البعث',
                            style: TextStyle(
                              fontFamily: 'kofi',
                              fontSize: 9.0.sp,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          Text(
                            // '20 دقيقة',
                            formatApiTime(post.postedAt),
                            style: TextStyle(
                              fontFamily: 'kofi',
                              fontSize: 9.0.sp,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (Get.find<AuthController>().authenticatedUser.pk ==
                    post.author)
                  PopupMenuButton(
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
                          () => Get.find<PostsController>().deletePost(post),
                        );
                      }
                      if (idx == 1) {
                        Get.to(() => EditPostPage(oldPost: post));
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
              ],
            ),
            // SizedBox(height: 15),
            Divider(),
            Text(
              post.body,
              style: TextStyle(
                fontFamily: 'tajwal',
              ),
            ),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // width: 60,
                  padding: EdgeInsets.all(8),
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFE2E2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Color(0xffFF6868),
                      ),
                      SizedBox(width: 10),
                      Text(
                        // '15',
                        post.likesCount.toString(),
                        style: TextStyle(
                          fontFamily: 'tajwal',
                          color: Color(0xffFF6868),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                InkWell(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (builder) {
                        return WillPopScope(
                          child: Material(
                            child: CommentsSheet(
                              postId: post.id,
                            ),
                          ),
                          onWillPop: () async {
                            Get.delete<CommentsController>();
                            return true;
                          },
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: 35,
                    decoration: BoxDecoration(
                      color: ColorPalletes.bluegrey2.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.comment,
                          size: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          // '15',
                          post.commentsCount.toString(),
                          style: TextStyle(
                            fontFamily: 'tajwal',
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CommentsSheet extends StatelessWidget {
  final postId;

  const CommentsSheet({Key key, @required this.postId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CommentsController(postId));
    return SafeArea(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'التعليقات',
                      style: TextStyle(
                        fontFamily: 'changa',
                        color: Theme.of(context).primaryColor,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(height: 8),
                  Expanded(child: CommentsPage()),
                  Divider(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, left: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: Get.find<CommentsController>().commentField,
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
                      if (Get.find<CommentsController>().isPushing)
                        return Container(
                          width: 30,
                          height: 30,
                          padding: EdgeInsets.all(4),
                          child: CircularProgressIndicator(),
                        );
                      return IconButton(
                        icon: Icon(Icons.send),
                        onPressed: Get.find<CommentsController>().addComment,
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
