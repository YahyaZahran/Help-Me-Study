import 'package:date_time_picker/date_time_picker.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/radio/gf_radio.dart';
import 'package:getwidget/size/gf_size.dart';

class P1 extends StatefulWidget {
  @override
  _P1State createState() => _P1State();
}

class _P1State extends State<P1> {
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
            "Sign up to get started",
            style: TextStyle(
              fontSize: wd / 13,
              fontFamily: "Cocan",
              color: Colors.grey,
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
                hintText: "User Name",
                hintStyle: TextStyle(fontSize: wd / 20, height: 0.5),
                prefixIcon: Icon(
                  EvaIcons.personOutline,
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
            child: DateTimePicker(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF7F5F5),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: "Birth Date",
                hintStyle: TextStyle(fontSize: wd / 20, height: 0.5),
                prefixIcon: Icon(
                  Icons.event,
                  size: 30,
                ),
              ),
              dateMask: 'd MMM, yyyy',
              initialValue: '',
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              style: TextStyle(fontSize: 17),
              onChanged: (val) => print(val),
            ),
          ),
        ),
        SizedBox(height: he / 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GFRadio(
                  size: GFSize.SMALL,
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: Colors.black,
                  radioColor: Color(0xFF3F3F3F),
                ),
                SizedBox(width: 10),
                Text(
                  "Male",
                  style: TextStyle(
                    fontSize: wd / 15,
                    fontFamily: "Cocan",
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GFRadio(
                  size: GFSize.SMALL,
                  value: 2,
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value;
                    });
                  },
                  inactiveIcon: null,
                  activeBorderColor: Colors.black,
                  radioColor: Color(0xFF3F3F3F),
                ),
                SizedBox(width: 10),
                Text(
                  "Female",
                  style: TextStyle(
                    fontSize: wd / 15,
                    fontFamily: "Cocan",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
