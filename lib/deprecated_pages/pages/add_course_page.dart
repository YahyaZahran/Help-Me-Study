import 'package:date_time_picker/date_time_picker.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:testap/deprecated_pages/wids/certificate_radio_buttons.dart';
import 'package:testap/deprecated_pages/wids/dropdown.dart';

class AddCoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFDDD9D9),
      appBar: buildGfAppBar(wd),
      body: ListView(
        primary: false,
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              Icon(Icons.post_add_rounded, size: wd / 15),
              SizedBox(width: 5),
              Text(
                "New Course",
                style: TextStyle(
                  fontSize: wd / 18,
                  fontFamily: "Cocan",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: he / 50,
          ),
          Row(children: [
            // MyAvatar(),
            SizedBox(width: 20),
            Expanded(
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
                  hintText: "Course Title",
                  hintStyle: TextStyle(
                      fontSize: wd / 20, fontFamily: "Cocan ", height: 0.5),
                  prefixIcon: Icon(
                    EvaIcons.editOutline,
                    size: wd / 12,
                  ),
                ),
              ),
            )
          ]),
          SizedBox(
            height: he / 40,
          ),
          TextField(
            maxLines: 3,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF7F5F5),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              hintText: "Description",
              hintStyle: TextStyle(
                fontSize: wd / 18,
                fontFamily: "Cocan",
              ),
            ),
          ),
          SizedBox(
            height: he / 50,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cost",
                    style: TextStyle(
                      fontSize: wd / 18,
                      fontFamily: "Cocan",
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F5F5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Placeholder(),
                    // child: CustomNumberPicker(
                    //   customAddButton: Icon(EvaIcons.plusCircle),
                    //   customMinusButton: Icon(EvaIcons.minusCircle),
                    //   initialValue: 5000,
                    //   maxValue: 1000000,
                    //   minValue: 0,
                    //   step: 500,
                    //   valueTextStyle: TextStyle(
                    //     fontSize: wd / 18,
                    //     fontFamily: "Cocan",
                    //   ),
                    //   onValue: (value) {
                    //     print(value.toString());
                    //   },
                    // ),
                  )
                ],
              ),
              SizedBox(
                width: wd / 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Certificate",
                    style: TextStyle(
                        fontSize: wd / 18,
                        fontFamily: "Cocan",
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  CertificateBuilder(
                    str1: "Yes",
                    str2: "No",
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: he / 40,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF7F5F5),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              prefixIcon: Icon(
                Icons.location_on_outlined,
                size: wd / 12,
              ),
              hintText: "Location",
              hintStyle: TextStyle(
                fontSize: wd / 18,
                height: 0.5,
                fontFamily: "Cocan",
              ),
            ),
          ),
          SizedBox(
            height: he / 40,
          ),
          Text(
            "Times",
            style: TextStyle(
              fontSize: wd / 18,
              fontFamily: "Cocan",
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: wd,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Color(0x853F3F3F),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              width: wd,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: wd / 5,
                        child: MyDropDown(
                          items: [
                            'Sun',
                            'Mon',
                            'Tus',
                            'Wed',
                            'Thu',
                            'Fri',
                            'Sat'
                          ],
                        ),
                      ),
                      Container(
                        width: wd / 7,
                        child: DateTimePicker(
                          type: DateTimePickerType.time,
                          timeLabelText: "From",
                          initialTime: TimeOfDay.now(),
                          onChanged: (val) => print(val),
                          validator: (val) {
                            print(val);
                            return null;
                          },
                          onSaved: (val) => print(val),
                        ),
                      ),
                      Container(
                        width: wd / 7,
                        child: DateTimePicker(
                          type: DateTimePickerType.time,
                          timeLabelText: "To",
                          initialTime: TimeOfDay.now(),
                          onChanged: (val) => print(val),
                          validator: (val) {
                            print(val);
                            return null;
                          },
                          onSaved: (val) => print(val),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: wd / 5,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: wd / 18,
                              fontFamily: "Cocan",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: wd,
                    child: Text(
                      "-from sun 2pm to 4 pm .",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: wd / 18,
                        fontFamily: "Cocan",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: wd,
                    child: Text(
                      "-from sun 2pm to 4 pm .",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: wd / 18,
                        fontFamily: "Cocan",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: wd,
                    child: Text(
                      "-from sun 2pm to 4 pm .",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: wd / 18,
                        fontFamily: "Cocan",
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: he / 30),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
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
                  "Submit",
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

  GFAppBar buildGfAppBar(double wd) {
    return GFAppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      title: Text(
        "TestApp",
        style: TextStyle(
          fontSize: wd / 14,
          fontFamily: "Cocan",
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }
}
