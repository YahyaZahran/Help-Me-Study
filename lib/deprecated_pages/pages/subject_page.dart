import 'package:flutter/material.dart';

class Subjectpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(wd),
      body: ListView(
        padding: EdgeInsets.all(20),
        primary: false,
        children: [
          SizedBox(height: he / 30),
          Center(
            child: Container(
              width: wd / 3,
              height: he / 5,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF3F3F3F), width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Cover.png"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: he / 80,
          ),
          Center(
            child: Text(
              "Electronic Circuts",
              style: TextStyle(
                fontSize: wd / 15,
                fontFamily: "Cocan",
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: he / 20,
          ),
          Text(
            "Description",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.thei course is a big shit . it is too hard and sucks fuck collage.",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: he / 60,
          ),
          Text(
            "Tutor",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Yahya Zahran",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: he / 60,
          ),
          Text(
            "Place",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Homs city ",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: he / 60,
          ),
          Text(
            "Duration",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "12 hours",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          Text(
            "Times",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "-saturday from 12pm to 5pm",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          Text(
            "-saturday from 12pm to 5pm",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          Text(
            "-saturday from 12pm to 5pm",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: he / 60,
          ),
          Text(
            "Cost",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "15000 S.P",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: he / 60,
          ),
          Text(
            "Certificate",
            style: TextStyle(
              fontSize: wd / 16,
              fontFamily: "Cocan",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "YES",
            style: TextStyle(
              fontSize: wd / 25,
              fontFamily: "Cocan",
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: he / 40,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF3F3F3F),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              width: wd / 2.25,
              child: TextButton(
                onPressed: () {
                  // TODO
                },
                child: Text(
                  "Enroll",
                  style: TextStyle(
                    fontSize: wd / 18,
                    fontFamily: "Cocan",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(double wd) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Text(
        "Testapp",
        style: TextStyle(
          fontSize: wd / 14,
          fontFamily: "Cocan",
          color: Colors.white,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Icon(Icons.search),
        ),
      ],
    );
  }
}
