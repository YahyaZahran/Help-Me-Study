import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../wids/p1.dart';
import '../wids/p2.dart';
import '../wids/p3.dart';
import 'main_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int groupValue = 0;

  String next = "Next";
  int pageNum = 0;

  PageController c = PageController();

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF3F3F3F),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          primary: false,
          children: [
            Column(
              children: [
                Container(
                  width: wd,
                  height: 2 * he / 3,
                  child: PageView(
                    onPageChanged: (value) {
                      print(value);

                      setState(() {
                        value == 2 ? next = "Finish" : next = "Next";
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
                    activeDotColor: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            SizedBox(height: he / 10),
            Center(
              child: Container(
                width: wd / 3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      if (pageNum != 2) {
                        c.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeOut);
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ));
                      }
                    },
                    child: Text(
                      next,
                      style: TextStyle(
                        fontSize: wd / 17,
                        fontFamily: "Cocan",
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
