import 'dart:math';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:testap/deprecated_pages/pages/subject_page.dart';

import 'edit_profile_info.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  PageController c = PageController();
  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildcoloredStatusBar(wd),
      body: ListView(
        primary: false,
        children: [
          buildContainer(wd, he, context),
          // SizedBox(height: he / 40),
          buildBio(wd),
          SizedBox(height: he / 40),
          buildDetails(wd),
          SizedBox(height: he / 40),
          buildCertificates(wd),
          SizedBox(height: he / 40),
          buildCourses(context, wd, he),
          SizedBox(height: he / 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reviews",
                  style: TextStyle(
                    fontSize: wd / 16,
                    fontFamily: "Cocan",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
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
                          backgroundImage:
                              AssetImage("assets/images/Cover.png"),
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
                // Column(
                //   children: [
                //     GFListTile(
                //       avatar: CircleAvatar(
                //         backgroundImage: AssetImage("assets/images/Cover.png"),
                //         radius: wd / 12,
                //       ),
                //       title: Text(
                //         "Yahya Zahran",
                //         style: TextStyle(
                //           fontSize: wd / 18,
                //           fontFamily: "Cocan",
                //           color: Colors.black,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //       subtitle: SmoothStarRating(
                //         starCount: 5,
                //         color: Colors.orange,
                //         borderColor: Colors.orange,
                //         rating: 5,
                //       ),
                //     ),
                //     Container(
                //       margin: EdgeInsets.only(left: wd / 4),
                //       width: wd,
                //       child: Text(
                //         "asdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                //         style: TextStyle(
                //           fontSize: wd / 22,
                //           fontFamily: "Cocan",
                //           color: Colors.black54,
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                itemCount: 4,
              ))
        ],
      ),
    );
  }

  Padding buildCourses(BuildContext context, double wd, double he) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: wd,
            child: Text(
              "Course",
              style: TextStyle(
                fontSize: wd / 14,
                fontFamily: "Cocan",
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: he / 3,
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
          Container(
            height: 20,
            child: SmoothPageIndicator(
              controller: c,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildCertificates(double wd) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Certificates & Skills",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "- Flutter Coding ",
                style: TextStyle(
                  fontSize: wd / 20,
                  fontFamily: "Cocan",
                  color: Colors.black54,
                ),
              ),
              Text(
                "- Eyes Doctor ",
                style: TextStyle(
                  fontSize: wd / 20,
                  fontFamily: "Cocan",
                  color: Colors.black54,
                ),
              ),
              Text(
                "- Drug Dealer ",
                style: TextStyle(
                  fontSize: wd / 20,
                  fontFamily: "Cocan",
                  color: Colors.black54,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget horizontalCardBuilder(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Subjectpage(),
            ));
      },
      child: Container(
        width: 300,
        padding: EdgeInsets.all(5),
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            padding: EdgeInsets.all(14),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Cover.png'),
                  radius: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Electronics Circuts',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Cocan',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 5,
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/Cover.png'),
                            radius: 15,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Yahya Zahran',
                            style: TextStyle(
                              fontSize: 13,
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
        ),
      ),
    );
  }

  Container buildDetails(double wd) {
    return Container(
        width: wd,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.home,
                        size: wd / 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Homs. Ekremah ",
                        style: TextStyle(
                          fontSize: wd / 20,
                          fontFamily: "Cocan",
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.cake,
                        size: wd / 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "61 Years",
                        style: TextStyle(
                          fontSize: wd / 20,
                          fontFamily: "Cocan",
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: wd / 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: wd / 20,
                          fontFamily: "Cocan",
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: wd / 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "0933564291",
                        style: TextStyle(
                          fontSize: wd / 20,
                          fontFamily: "Cocan",
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Padding buildBio(double wd) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bio",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "My name is Mohammed Ammourie. 4th year studient in IT albaath University.Dont't see me walking go straight me and watch !!",
            style: TextStyle(
              fontSize: wd / 23,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }

  Container buildContainer(double wd, double he, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: wd / 20),
      decoration: BoxDecoration(
        gradient: new LinearGradient(colors: [Color(0xFF3F3F3F), Colors.black]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(wd / 2.5, he / 8),
        ),
      ),
      width: wd,
      height: he / 2.3,
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
                  IconButton(
                    icon: Icon(
                      EvaIcons.edit,
                      color: Colors.white,
                      size: wd / 14,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfileInfoPage(),
                          ));
                    },
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: wd / 20),
              width: wd,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: wd / 13,
                    backgroundImage: AssetImage("assets/images/Cover.png"),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mohammed Ammourie",
                            style: TextStyle(
                              fontSize: wd / 18,
                              fontFamily: "Cocan",
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey,
                                size: wd / 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Syria",
                                style: TextStyle(
                                  fontSize: wd / 24,
                                  fontFamily: "Cocan",
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: he / 40,
            ),
            // GFListTile(
            //   title: Text(
            //     "Mohammed Ammourie",
            //     style: TextStyle(
            //       fontSize: wd / 16,
            //       fontFamily: "Cocan",
            //       color: Colors.white,
            //     ),
            //   ),
            //   subtitle: Row(
            //     children: [
            //       Icon(
            //         Icons.location_on_outlined,
            //         color: Colors.grey,
            //         size: wd / 18,
            //       ),
            //       SizedBox(width: 5),
            //       Text(
            //         "Syria",
            //         style: TextStyle(
            //           fontSize: wd / 24,
            //           fontFamily: "Cocan",
            //           color: Colors.grey,
            //         ),
            //       ),
            //     ],
            //   ),
            //   avatar: CircleAvatar(
            //     radius: wd / 13,
            //     backgroundImage: AssetImage("assets/images/Cover.png"),
            //   ),
            // ),
            Container(
              width: wd,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Rating",
                        style: TextStyle(
                          fontSize: wd / 18,
                          fontFamily: "Cocan",
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "3.6",
                        style: TextStyle(
                          fontSize: wd / 24,
                          fontFamily: "Cocan",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: he / 30,
                      ),
                      Container(
                        width: wd / 3,
                        // height: he / 12,
                        height: min(55, he / 12),
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
                            "Rate",
                            style: TextStyle(
                              fontSize: wd / 18,
                              fontFamily: "Cocan",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Cources",
                        style: TextStyle(
                          fontSize: wd / 18,
                          fontFamily: "Cocan",
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: wd / 24,
                          fontFamily: "Cocan",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: he / 30,
                      ),
                      Container(
                        // width: wd / 3,
                        width: min(wd / 3, 160),
                        height: min(55, he / 12),
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
                            "Contact",
                            style: TextStyle(
                              fontSize: wd / 18,
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

            // Container(
            //   width: wd,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [

            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  PreferredSize buildcoloredStatusBar(double wd) {
    return PreferredSize(
      child: new Container(
        child: new Container(),
        decoration: new BoxDecoration(
          gradient:
              new LinearGradient(colors: [Color(0xFF3F3F3F), Colors.black]),
        ),
      ),
      preferredSize: new Size(wd, 0.0),
    );
  }
}
