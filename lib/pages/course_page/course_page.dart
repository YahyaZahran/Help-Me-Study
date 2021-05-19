import 'dart:math';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class Subjectpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: buildAppBar(wd, context),
      body: ListView(
        primary: false,
        padding: EdgeInsets.all(0),
        children: [
          buildImageCard(context),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.all(5),
            color: Colors.white,
            child: Row(children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "English 3",
                      style: TextStyle(
                        fontSize: 25.0.sp,
                        fontFamily: "Cocan",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.0.h),
                    Text(
                      "Yahya zahran",
                      style: TextStyle(
                        fontSize: 17.0.sp,
                        fontFamily: "Cocan",
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Divider(
            color: Theme.of(context).backgroundColor,
            thickness: 3,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                ExpandablePanel(
                  controller: ExpandableController(initialExpanded: true),
                  header: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20.0.sp,
                        fontFamily: "Cocan",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  collapsed: null,
                  expanded: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text(
                      "thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.",
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontFamily: "Cocan",
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).backgroundColor,
                  thickness: 3,
                ),
                ExpandablePanel(
                  header: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Times",
                      style: TextStyle(
                        fontSize: 20.0.sp,
                        fontFamily: "Cocan",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  collapsed: null,
                  expanded: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Column(
                      children: [
                        Text(
                          "- Sunday from 2pm to 4 pm",
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            fontFamily: "Cocan",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Sunday from 2pm to 4 pm",
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            fontFamily: "Cocan",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Sunday from 2pm to 4 pm",
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            fontFamily: "Cocan",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Sunday from 2pm to 4 pm",
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            fontFamily: "Cocan",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).backgroundColor,
                  thickness: 3,
                ),
                ExpandablePanel(
                  header: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Additional info",
                      style: TextStyle(
                        fontSize: 20.0.sp,
                        fontFamily: "Cocan",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  collapsed: null,
                  expanded: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.home_outlined,
                                    size: 20.0.sp,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Homs",
                                    style: TextStyle(
                                      fontSize: 17.0.sp,
                                      fontFamily: "Cocan",
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.monetization_on_outlined,
                                    size: 20.0.sp,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "2500 S.P",
                                    style: TextStyle(
                                      fontSize: 17.0.sp,
                                      fontFamily: "Cocan",
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.watch_later_outlined,
                                    size: 20.0.sp,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "12 Hours",
                                    style: TextStyle(
                                      fontSize: 17.0.sp,
                                      fontFamily: "Cocan",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                )
              ],
            ),
          )

          // buildPlace(),
          // buildDuration(),
          // buildTimes(),
          // buildCost(),
          // Padding(
          //   padding: const EdgeInsets.all(10),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         "Certificate",
          //         style: TextStyle(
          //           fontSize: 20.0.sp,
          //           fontFamily: "Cocan",
          //           color: Colors.black,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       SizedBox(height: 5),
          //       Text(
          //         "YES",
          //         style: TextStyle(
          //           fontSize: 15.0.sp,
          //           fontFamily: "Cocan",
          //           color: Colors.black54,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Center(
          //   child: Container(
          //     margin: EdgeInsets.only(bottom: 10),
          //     decoration: BoxDecoration(
          //       color: Theme.of(context).primaryColor,
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(10),
          //       ),
          //     ),
          //     width: wd / 2.25,
          //     child: TextButton(
          //       onPressed: () {
          //         // TODO
          //       },
          //       child: Text(
          //         "Enroll",
          //         style: TextStyle(
          //           fontSize: wd / 18,
          //           fontFamily: "Cocan",
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Container buildImageCard(BuildContext context) {
    return Container(
      width: 100.0.w,
      height: 40.0.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/Cover.png"),
        ),
      ),
    );
  }

  Padding buildCost() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cost",
            style: TextStyle(
              fontSize: 20.0.sp,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "15000 S.P",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTimes() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Times",
            style: TextStyle(
              fontSize: 20.0.sp,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "-saturday from 12pm to 5pm",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          Text(
            "-saturday from 12pm to 5pm",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          Text(
            "-saturday from 12pm to 5pm",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildDuration() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Duration",
            style: TextStyle(
              fontSize: 20.0.sp,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "12 hours",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildPlace() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Place",
            style: TextStyle(
              fontSize: 20.0.sp,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Homs city ",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTutorName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tutor",
            style: TextStyle(
              fontSize: 20.0.sp,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Yahya Zahran",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Padding buildDescription(double wd) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: TextStyle(
              fontSize: 20.0.sp,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.",
            style: TextStyle(
              fontSize: 15.0.sp,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  // double wd = MediaQuery.of(context).size.width;
  // double he = MediaQuery.of(context).size.height;

  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     appBar: buildAppBar(wd),
  //     body: ListView(
  //       padding: EdgeInsets.all(20),
  //       primary: false,
  //       children: [
  //         SizedBox(height: he / 30),
  //         Center(
  //           child: Container(
  //             width: wd / 3,
  //             height: he / 5,
  //             decoration: BoxDecoration(
  //               border: Border.all(color: Color(0xFF3F3F3F), width: 1),
  //               borderRadius: BorderRadius.all(
  //                 Radius.circular(15),
  //               ),
  //               image: DecorationImage(
  //                 fit: BoxFit.cover,
  //                 image: AssetImage("assets/images/Cover.png"),
  //               ),
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 80,
  //         ),
  //         Center(
  //           child: Text(
  //             "Electronic Circuts",
  //             style: TextStyle(
  //               fontSize: wd / 15,
  //               fontFamily: "Cocan",
  //               color: Colors.black,
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 20,
  //         ),
  //         Text(
  //           "Description",
  //           style: TextStyle(
  //             fontSize: 20.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           "thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 60,
  //         ),
  //         Text(
  //           "Tutor",
  //           style: TextStyle(
  //             fontSize: 20.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           "Yahya Zahran",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 60,
  //         ),
  //         Text(
  //           "Place",
  //           style: TextStyle(
  //             fontSize: 20.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           "Homs city ",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 60,
  //         ),
  //         Text(
  //           "Duration",
  //           style: TextStyle(
  //             fontSize: 20.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           "12 hours",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         Text(
  //           "Times",
  //           style: TextStyle(
  //             fontSize: 20.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           "-saturday from 12pm to 5pm",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         Text(
  //           "-saturday from 12pm to 5pm",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         Text(
  //           "-saturday from 12pm to 5pm",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 60,
  //         ),
  //         Text(
  //           "Cost",
  //           style: TextStyle(
  //             fontSize: 20.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           "15000 S.P",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 60,
  //         ),
  //         Text(
  //           "Certificate",
  //           style: TextStyle(
  //             fontSize: 20.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(height: 5),
  //         Text(
  //           "YES",
  //           style: TextStyle(
  //             fontSize: 15.0.sp,
  //             fontFamily: "Cocan",
  //             color: Colors.black54,
  //           ),
  //         ),
  //         SizedBox(
  //           height: he / 40,
  //         ),
  //         Center(
  //           child: Container(
  //             decoration: BoxDecoration(
  //               color: Color(0xFF3F3F3F),
  //               borderRadius: BorderRadius.all(
  //                 Radius.circular(10),
  //               ),
  //             ),
  //             width: wd / 2.25,
  //             child: TextButton(
  //               onPressed: () {
  //                 // TODO
  //               },
  //               child: Text(
  //                 "Enroll",
  //                 style: TextStyle(
  //                   fontSize: wd / 18,
  //                   fontFamily: "Cocan",
  //                   color: Colors.white,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
}

Container buildContainer(double wd, double he, BuildContext context) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColor.withOpacity(0.5),
                Colors.transparent,
              ],
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "English3",
                    style: TextStyle(
                        fontSize: 20.0.sp,
                        fontFamily: 'Cocan',
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back,
                        size: 25.0.sp, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
    // padding: EdgeInsets.symmetric(horizontal: wd / 20),
    decoration: BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fitWidth, image: AssetImage("assets/images/Cover.png")),
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
    height: 45.0.h,
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

AppBar buildAppBar(double wd, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      "Testapp",
      style: TextStyle(
        fontSize: wd / 14,
        fontFamily: "Cocan",
        color: Theme.of(context).primaryColor,
      ),
    ),
    iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
  );
}
