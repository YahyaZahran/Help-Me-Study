import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/pages/home.dart';

import 'p1.dart';
import 'p2.dart';
import 'p3.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int groupValue = 0;

  String next = "التالي";
  int pageNum = 0;

  PageController c = PageController();

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffF0F2F5),
          // gradient: LinearGradient(
          //   colors: [
          //     Theme.of(context).primaryColor,
          //     Theme.of(context).accentColor
          //   ],
          // ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            primary: false,
            children: [
              Column(
                children: [
                  Container(
                    width: 100.0.w,
                    height: 35.0.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage("assets/images/img2.png"),
                      ),
                    ),
                  ),
                  Container(
                    width: wd,
                    height: 1.1 * he / 3,
                    child: PageView(
                      onPageChanged: (value) {
                        print(value);

                        setState(() {
                          value == 2 ? next = "إرسال" : next = "التالي";
                          pageNum = value;
                        });
                      },
                      controller: c,
                      children: [
                        P1(),
                        P2(),
                        P3(),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: c,
                    count: 3,
                    effect: JumpingDotEffect(
                      activeDotColor: Theme.of(context).primaryColor,
                      dotColor: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: he / 20),
              Center(
                child: Container(
                  width: 85.0.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                      onPressed: () {
                        if (pageNum != 2) {
                          c.nextPage(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeOut);
                        } else {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        }
                      },
                      child: Text(
                        next,
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: "kofi",
                          color: Theme.of(context).primaryColor,
                        ),
                      )),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
