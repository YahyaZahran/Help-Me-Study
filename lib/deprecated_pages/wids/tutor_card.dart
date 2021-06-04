import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../pages/profile.dart';

class TutorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 41.0.h,
      width: 90.0.w,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 0.5,
            color: Colors.grey.shade900,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 15,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50.0.sp,
                      backgroundImage: AssetImage('assets/images/Cover.png'),
                    ),
                    SizedBox(
                      height: 6.0.h,
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
                                      builder: (context) => ProfilePage(),
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
                    ),
                  ],
                ),
              ),
              flex: 5,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohammed Ammourie',
                          style: TextStyle(
                            fontSize: 13.0.sp,
                            fontFamily: 'Cocan',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'IT Student',
                          style: TextStyle(
                            fontSize: 10.0.sp,
                            fontFamily: 'Cocan',
                          ),
                        ),
                      ],
                    ),
                    buildAttributeItem(
                      icon: Icons.edit_outlined,
                      title: "Specification",
                      value: "Math,English",
                    ),
                    buildAttributeItem(
                      icon: Icons.star_border_rounded,
                      title: "Rating",
                      value: "5 / 10",
                    ),
                    buildAttributeItem(
                      icon: Icons.monetization_on_outlined,
                      title: "Average Price",
                      value: "2500 per hour",
                    ),
                  ],
                ),
              ),
              flex: 6,
            )
          ],
        ),
      ),
    );
  }

  buildAttributeItem({IconData icon, String title, String value}) {
    return Center(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade300,
            ),
            child: Icon(icon),
          ),
          SizedBox(
            width: 2.0.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'cocan',
                  ),
                ),
                SizedBox(height: 2.0.sp),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 11.0.sp,
                    fontFamily: 'cocan',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
