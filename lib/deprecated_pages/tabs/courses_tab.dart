import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sizer/sizer.dart';

import '../pages/add_course_page.dart';
import '../pages/main_page.dart';
import '../pages/subject_page.dart';
import '../wids/course_card.dart';

class CoursesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 25.0.h,
            child: GFListTile(
              margin: EdgeInsets.all(5),
              color: Colors.white60,
              avatar: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Cover.png"),
                    radius: 30.0.sp,
                  ),
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wanna Add A new Course",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 6.0.w,
                      fontFamily: 'Cocan',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.grey.shade300),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddCoursePage(),
                            ));
                      },
                      child: Text(
                        "Add Course",
                        style: TextStyle(
                            fontSize: 15.0.sp,
                            fontFamily: 'Cocan',
                            color: Colors.black),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Recommended',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Cocan',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            height: 170,
            child: ListView.builder(
              itemBuilder: horizontalCardBuilder,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Courses',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Cocan',
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: test,
            itemCount: 10,
          )
        ],
      ),
    );
  }

  Widget horizontalCardBuilder(BuildContext context, int index) {
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
          elevation: 1.5,
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

  Widget test(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CourseCard(),
    );
  }

  Widget verticalCardBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * .4,
          child: Row(
            children: [
              leftSide(context),
              rightSide(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget leftSide(BuildContext context) {
    // var MediaQuery.of(context).size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: 25 - 8.0,
        left: 8,
      ),
      width: MediaQuery.of(context).size.width * .36,
      child: Column(
        children: [
          CircleAvatar(
            radius: MediaQuery.of(context).size.width * .15,
            backgroundImage: AssetImage('assets/images/Cover.png'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .02),
          buildInfoRow(Icons.person, 'Yahya Zahran'),
          SizedBox(height: MediaQuery.of(context).size.height * .012),
          buildInfoRow(Icons.alarm, '12 Hours'),
          SizedBox(height: MediaQuery.of(context).size.height * .012),
          buildInfoRow(Icons.monetization_on_outlined, '2500'),
        ],
      ),
    );
  }

  Widget rightSide(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 25 - 8.0, left: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Electronic Circuts',
              maxLines: 1,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * .06, //20
                fontWeight: FontWeight.bold,
                fontFamily: 'cocan',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Text(
                getString(),
                overflow: TextOverflow.fade,
                style: TextStyle(
                  color: Colors.black45,
                  fontFamily: 'cocan',
                  fontSize: MediaQuery.of(context).size.width * .05, //17
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Color.fromARGB(255, 236, 236, 236)),
                  elevation: MaterialStateProperty.resolveWith((states) => 0.1),
                ),
                onPressed: () {},
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'cocan',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(IconData icon, String title) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
        ),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'cocan',
          ),
        ),
      ],
    );
  }
}
