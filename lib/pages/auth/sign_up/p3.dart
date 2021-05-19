import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
        // SizedBox(height: he / 40),
        // Container(
        //   width: wd,
        //   child: Text(
        //     "Welcome",
        //     style: TextStyle(
        //       fontSize: 35.0.sp,
        //       fontFamily: "Cocan",
        //       color: Colors.white,
        //     ),
        //     textAlign: TextAlign.left,
        //   ),
        // ),
        // Container(
        //   width: wd,
        //   child: Text(
        //     "Complete Registeration",
        //     style: TextStyle(
        //       fontSize: 25.0.sp,
        //       fontFamily: "Cocan",
        //       color: Colors.grey,
        //     ),
        //     textAlign: TextAlign.left,
        //   ),
        // ),
        SizedBox(height: he / 40),
        Center(
          child: SizedBox(
            width: 85.0.w,
            height: 8.0.h,
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
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
        SizedBox(height: he / 25),
        Center(
          child: SizedBox(
            width: 85.0.w,
            height: 8.0.h,
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
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
