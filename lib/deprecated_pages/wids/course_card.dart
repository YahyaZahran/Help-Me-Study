import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../pages/main_page.dart';
import '../pages/subject_page.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0.h,
      width: 90.0.w,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              width: 0.5,
              color: Colors.grey.shade900,
            )),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(12.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 45.0.sp,
                      backgroundImage: AssetImage('assets/images/Cover.png'),
                    ),
                    buildInfoRow(Icons.person, 'Yahya Alzahrna'),
                    buildInfoRow(Icons.alarm, '12 Hours'),
                    buildInfoRow(Icons.monetization_on_outlined, '2500'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(10.0.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Electronic Circuts',
                      style: TextStyle(
                        fontSize: 17.0.sp,
                        fontFamily: 'cocan',
                      ),
                    ),
                    SizedBox(height: 2.0.h),
                    Expanded(
                      child: Text(
                        getString(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontFamily: 'cocan',
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            width: MediaQuery.of(context).size.width / 2.25,
                            height: min(
                                55, MediaQuery.of(context).size.height / 13),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Subjectpage(),
                                    ));
                              },
                              child: Text(
                                "Data",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18,
                                  fontFamily: "Cocan",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Row buildInfoRow(IconData icon, String title) {
  return Row(
    children: [
      Icon(
        icon,
        size: 15.0.sp,
      ),
      SizedBox(width: 1.0.w),
      Expanded(
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.0.sp,
            fontFamily: 'cocan',
          ),
        ),
      ),
    ],
  );
}
