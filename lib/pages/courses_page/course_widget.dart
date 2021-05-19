import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CourseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Cover.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              'تعلم جدول الضرب بسرعة البرق',
              style: TextStyle(fontFamily: 'kofi', fontSize: 14.0.sp),
            ),
            SizedBox(height: 5),
            Text(
              'طريقة رائعة جدا و سحرية في تعليم جدول الضرب و هي ما بترحم ابدا',
              style: TextStyle(
                fontFamily: 'tajwal',
                fontSize: 10.0.sp,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.place,
                    size: 20,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'حمص-عكرمة الجديدة -معهد الامل',
                  style: TextStyle(
                    fontFamily: 'kofi',
                    fontSize: 9.0.sp,
                    color: Theme.of(context).accentColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.asset('assets/images/Cover.png'),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'يحيى الزهران',
                  style: TextStyle(
                    fontFamily: 'kofi',
                    fontSize: 9.0.sp,
                    color: Theme.of(context).accentColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
