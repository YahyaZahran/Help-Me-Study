import 'package:date_time_picker/date_time_picker.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/radio/gf_radio.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:sizer/sizer.dart';

class P1 extends StatefulWidget {
  @override
  _P1State createState() => _P1State();
}

class _P1State extends State<P1> {
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: he / 40),
        Center(
          child: SizedBox(
            width: 85.0.w,
            height: 8.0.h,
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                hintText: "اسم المستخدم",
                hintStyle: TextStyle(
                    fontSize: 15.0.sp, height: 0.5, fontFamily: "Kofi"),
                prefixIcon: Icon(
                  EvaIcons.personOutline,
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
            child: DateTimePicker(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                hintText: "تاريخ الميلاد",
                hintStyle: TextStyle(
                    fontSize: wd / 20, height: 0.5, fontFamily: "Kofi"),
                prefixIcon: Icon(
                  Icons.event,
                  size: 25.0.sp,
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
        SizedBox(height: he / 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
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
                  activeBorderColor: Theme.of(context).primaryColor,
                  radioColor: Theme.of(context).primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  "ذكر",
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    fontFamily: "Kofi",
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Row(
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
                  activeBorderColor: Theme.of(context).primaryColor,
                  radioColor: Theme.of(context).primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  "أنثى",
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    fontFamily: "Kofi",
                    color: Colors.black,
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
