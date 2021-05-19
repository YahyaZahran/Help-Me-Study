import 'dart:math';

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:testap/color_pallete.dart';

import 'package:sizer/sizer.dart';
import 'package:toggle_bar/toggle_bar.dart';

import '../../my_colors.dart';

class ProfilePage extends StatelessWidget {
  PageController c = PageController();
  PageController c2 = PageController();

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: buildcoloredStatusBar(wd, context),
      body: Column(
        children: [
          buildContainer(wd, he, context),
          SizedBox(height: he / 40),
          Container(
            height: 72,
            child: ToggleBar(
              labelTextStyle: TextStyle(
                fontSize: 10.0.sp,
              ),
              backgroundColor: Colors.grey[300],
              selectedTabColor: Theme.of(context).accentColor,
              borderRadius: 15,
              textColor: Colors.black,
              labels: ["لمحة", "التفاصيل", "الشهادات", "الدورات", "التقييم"],
              onSelectionUpdated: (index) =>
                  c2.jumpToPage(index), // Do something with index
            ),
          ),
          SizedBox(height: he / 40),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: PageView(
                controller: c2,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildBio(wd),
                  buildDetails(context, wd),
                  buildCertificates(wd),
                  buildCourses(context, wd, he),
                  buildReviews(wd),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListView buildReviews(double wd) {
    return ListView(
      primary: false,
      children: [
        Container(
          width: wd,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 20),
                width: wd,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Cover.png"),
                      radius: wd / 12,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Yahya Zahran",
                            style: TextStyle(
                              fontSize: wd / 18,
                              fontFamily: "Cocan",
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SmoothStarRating(
                            starCount: 5,
                            color: Colors.orange,
                            borderColor: Colors.orange,
                            rating: 5,
                          ),
                          Text(
                            "asdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                            style: TextStyle(
                              fontSize: wd / 22,
                              fontFamily: "Cocan",
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                )),
            itemCount: 4,
          ),
        )
      ],
    );
  }

  ListView buildCourses(BuildContext context, double wd, double he) {
    return ListView(
      primary: false,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 30.0.h,
          width: wd,
          child: PageView(
            children: [
              horizontalCardBuilder(context),
              horizontalCardBuilder(context),
              horizontalCardBuilder(context),
              horizontalCardBuilder(context),
            ],
            controller: c,
          ),
        ),
        Center(
          child: Container(
            height: 20,
            child: SmoothPageIndicator(
              controller: c,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  ListView buildCertificates(double wd) {
    return ListView(
      primary: false,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "ـ أخصائي في طب الأسنان وجراحتها",
              style: TextStyle(
                fontSize: 18.0.sp,
                fontFamily: "Cocan",
                color: Colors.black54,
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(height: 2.0.h),
            Text(
              "ـ ماجستير في اللغة الإنكليزية",
              style: TextStyle(
                fontSize: 18.0.sp,
                fontFamily: "Cocan",
                color: Colors.black54,
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(height: 2.0.h),
            Text(
              "ـ بايثون",
              style: TextStyle(
                fontSize: 18.0.sp,
                fontFamily: "Cocan",
                color: Colors.black54,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        )
      ],
    );
  }

  Widget horizontalCardBuilder(BuildContext context) {
    return Center(
      child: Container(
        width: 80.0.w,
        height: 33.0.h,
        decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).primaryColor, width: 0.25),
          borderRadius: BorderRadius.all(
            Radius.circular(19),
          ),
          color: ColorPalletes.bluegrey1.shade50,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Cover.png"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              // margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(19),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),

              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    width: 50.0.sp,
                    height: 50.0.sp,
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/Cover.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0.sp,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.0.w,
                        child: Text(
                          "English3 English3 English3",
                          style: TextStyle(
                              fontSize: 16.0.sp,
                              fontFamily: 'Cocan',
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        "Yahya Zahran",
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: 'Cocan',
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView buildDetails(BuildContext context, double wd) {
    return ListView(
      primary: false,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsItem(
                icon: Icons.person,
                title: 'ذكر',
              ),
              Divider(),
              // SizedBox(height: 5),
              DetailsItem(
                icon: Icons.place,
                title: 'حمص - المخيم - حد تبع الكباب',
              ),
              Divider(),
              DetailsItem(
                icon: Icons.phone,
                title: '09346512314',
              ),
              Divider(),
              DetailsItem(
                icon: Icons.cake,
                title: '48',
              ),
            ],
          ),
        ),
      ],
    );
  }

  ListView buildBio(double wd) {
    return ListView(primary: false, children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              "اسمي محمد العموري وأدرس هندسة معلوماتية في جامعة البعث . من مدينة إدلب  ششسية شكمسي  شسي شسي شكس شسيت شميش شسي مش",
              style: TextStyle(
                fontSize: 13.0.sp,
                fontFamily: "cairo",
              ),
            ),
          ])),
    ]);
  }

  Container buildContainer(double wd, double he, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(30.0.w, 15.0.h),
        ),
      ),

      /// hello i'm ammourie .. the idiot one ...
      width: wd,
      height: 50.0.h,
      child: Container(
        child: Column(
          children: [
            Container(
              width: wd,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                      size: wd / 14,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: wd / 20),
              width: wd,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0.sp,
                    backgroundImage: AssetImage("assets/images/Cover.png"),
                  ),
                  SizedBox(width: 10.0.w),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "محمد العموري",
                          style: TextStyle(
                            fontSize: 20.0.sp,
                            fontFamily: "Cocan",
                            color: MyColors.primaryText,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: MyColors.secondaryText,
                              size: 16.0.sp,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "سوريا",
                              style: TextStyle(
                                fontSize: 16.0.sp,
                                fontFamily: "Cocan",
                                color: MyColors.secondaryText,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: he / 40,
            ),
            Container(
              width: wd,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "التقييم",
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: "Cocan",
                          color: MyColors.primaryText,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "3.6",
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: "Cocan",
                          color: MyColors.secondaryText,
                        ),
                      ),
                      SizedBox(
                        height: he / 30,
                      ),
                      Container(
                        width: wd / 3,
                        // height: he / 12,
                        height: min(45, he / 12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            //TODO
                          },
                          child: Text(
                            "قيَمني",
                            style: TextStyle(
                              fontSize: wd / 20,
                              fontFamily: "Cocan",
                              color: MyColors.primaryText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "الدورات",
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: "Cocan",
                          color: MyColors.primaryText,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: "Cocan",
                          color: MyColors.secondaryText,
                        ),
                      ),
                      SizedBox(
                        height: he / 30,
                      ),
                      Container(
                        // width: wd / 3,
                        width: min(wd / 3, 160),
                        height: min(45, he / 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // TODO
                          },
                          child: Text(
                            "إتصل بي",
                            style: TextStyle(
                              fontSize: wd / 20,
                              fontFamily: "Cocan",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSize buildcoloredStatusBar(double wd, BuildContext context) {
    return PreferredSize(
      child: new Container(
        child: new Container(),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
          ]),
        ),
      ),
      preferredSize: new Size(wd, 0.0),
    );
  }
}

class DetailsItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DetailsItem({
    Key key,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: 20,
            color: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 12.0.sp,
            color: Colors.black45,
          ),
        )
      ],
    );
  }
}
