import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../pages/main_page.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 2.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Cover.png'),
            ),
            title: Text(
              'Yahya Zahran',
              style: TextStyle(
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w300,
                fontFamily: 'cocan',
              ),
            ),
            trailing: Text(
              '9:00 AM',
              style: TextStyle(
                fontSize: 12.0.sp,
                fontFamily: 'cocan',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              getString(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "still active",
                  style: TextStyle(
                    fontFamily: 'cocan',
                    fontSize: 13.0.sp,
                    color: Colors.grey.shade600,
                  ),
                )),
                Row(
                  children: [
                    Icon(Icons.bookmark_border),
                    SizedBox(width: 5.0.w),
                    Icon(Icons.send),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
