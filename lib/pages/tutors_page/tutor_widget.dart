import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color_pallete.dart';
import 'material_bubble.dart';

class TutorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
                            'يحيى الزهران',
                            style: TextStyle(
                                fontFamily: 'kofi', fontSize: 14.0.sp),
                          ),
                          Text(
                            'جامعة البعث',
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
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: ColorPalletes.orange1.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '5',
                        style: TextStyle(
                          fontFamily: 'kofi',
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.star,
                        color: ColorPalletes.orange1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 32,
              child: ListView.builder(
                itemBuilder: (_, __) => MaterialBubble(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
