import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../wids/posts_card.dart';

class RecentTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0.sp,
                        backgroundImage: AssetImage('assets/images/Cover.png'),
                      ),
                      SizedBox(width: 5.0.w),
                      Text(
                        'Write your post here',
                        style: TextStyle(
                          fontFamily: 'cocan',
                          fontSize: 15.0.sp,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey.shade600),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Post',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.0.h),
            ListView.builder(
              itemBuilder: (ctx, idx) => PostCard(),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}
