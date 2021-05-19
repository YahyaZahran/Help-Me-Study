import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class MyReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          title: Text(
            'التقييمات',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: 'kofi',
              fontSize: 15.0.sp,
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (_, __) => ReviewWidget(),
          itemCount: 4,
        ));
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsetsDirectional.only(bottom: 5),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'يحيى الزهران',
                            style: TextStyle(
                              fontFamily: 'kofi',
                              fontSize: 15.0.sp,
                            ),
                          ),
                          SmoothStarRating(
                            size: 15,
                            starCount: 5,
                            color: Colors.orange,
                            borderColor: Colors.orange,
                            rating: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  '20 دقيقة',
                  style: TextStyle(
                    fontFamily: 'kofi',
                    fontSize: 9.0.sp,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              "والله انك كنت شاطر وابن حلال .. بس مدري ليش ماكسك نجمتين",
              style: TextStyle(
                fontSize: 12.0.sp,
                fontFamily: "cairo",
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
