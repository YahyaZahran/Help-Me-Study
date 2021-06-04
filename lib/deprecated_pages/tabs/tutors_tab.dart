import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../pages/profile.dart';
import '../wids/tutor_card.dart';

class TutorsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Recommended",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0.sp,
                  color: Colors.black,
                  fontFamily: 'Cocan',
                ),
              ),
            ),
            SizedBox(
              height: 26.0.h,
              child: ListView.builder(
                itemBuilder: (_, __) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilePage(),
                            ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40.0.sp,
                            backgroundImage: AssetImage(
                              'assets/images/Cover.png',
                            ),
                          ),
                          SizedBox(height: 2.0.h),
                          Text(
                            "Yahya hello",
                            style: TextStyle(
                              fontSize: 13.0.sp,
                              color: Colors.black,
                              fontFamily: 'Cocan',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Tutors",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0.sp,
                        color: Colors.black,
                        fontFamily: 'Cocan',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.filter_list_sharp,
                        size: 16.0.sp,
                        color: Colors.grey.shade500,
                      ),
                      SizedBox(width: 1.0.w),
                      Text(
                        "Filter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0.sp,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, __) => TutorCard(),
              itemCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}
