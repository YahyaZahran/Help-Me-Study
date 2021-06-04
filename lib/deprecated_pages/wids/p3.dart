import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class P3 extends StatefulWidget {
  @override
  _P3State createState() => _P3State();
}

class _P3State extends State<P3> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: he / 40),
        Container(
          width: wd,
          child: Text(
            "Welcome",
            style: TextStyle(
              fontSize: wd / 9,
              fontFamily: "Cocan",
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          width: wd,
          child: Text(
            "Complete Registeration",
            style: TextStyle(
              fontSize: wd / 13,
              fontFamily: "Cocan",
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: he / 18),
        Center(
          child: SizedBox(
            width: wd * 7 / 8,
            height: he / 15,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF7F5F5),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: "Password",
                hintStyle: TextStyle(fontSize: wd / 20, height: 0.5),
                prefixIcon: Icon(
                  EvaIcons.eyeOutline,
                  size: wd / 12,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: he / 18),
        Center(
          child: SizedBox(
            width: wd * 7 / 8,
            height: he / 15,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF7F5F5),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: "Retype Password",
                hintStyle: TextStyle(fontSize: wd / 20, height: 0.5),
                prefixIcon: Icon(
                  EvaIcons.eyeOutline,
                  size: wd / 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
