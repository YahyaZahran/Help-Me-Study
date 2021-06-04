import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:testap/deprecated_pages/wids/certificate_radio_buttons.dart';

// ignore: must_be_immutable
class EditProfileInfoPage extends StatelessWidget {
  TextEditingController nameController = new TextEditingController();
  TextEditingController bioController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = "Mohammed Ammourie";
    locationController.text = "Homs. Ekremah ";
    ageController.text = "64 ";
    phoneController.text = "0933564291";
    bioController.text =
        "My name is Mohammed Ammourie. 4th year studient in IT albaath University.Dont't see me walking go straight me and watch !!";
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Personal Information",
          style: TextStyle(
            fontSize: wd / 14,
            fontFamily: "Cocan",
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFDDD9D9),
      body: ListView(
        primary: false,
        padding: EdgeInsets.all(20),
        children: [
          Row(
            children: [
              Icon(Icons.post_add_rounded, size: wd / 15),
              SizedBox(width: 5),
              Text(
                "Edit Info",
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
                controller: nameController,
                style: TextStyle(fontSize: wd / 22, fontFamily: "Cocan "),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF7F5F5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: "Change Your Name",
                  hintStyle: TextStyle(
                    fontSize: wd / 22,
                    fontFamily: "Cocan ",
                  ),
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
          Text("Bio",
              style: TextStyle(
                fontSize: wd / 20,
              )),
          SizedBox(
            height: 5,
          ),
          TextField(
            style: TextStyle(
              fontSize: wd / 22,
            ),
            controller: bioController,
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
              hintText: "Edit Your Bio",
              hintStyle: TextStyle(
                fontSize: wd / 22,
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
                    "Age",
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
                    child: Container(
                      width: wd / 4,
                      child: TextField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: wd / 22,
                        ),
                        controller: ageController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF7F5F5),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
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
                    "Gender",
                    style: TextStyle(
                        fontSize: wd / 18,
                        fontFamily: "Cocan",
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  CertificateBuilder(
                    str1: "Male",
                    str2: "Female",
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: he / 40,
          ),
          TextField(
            style: TextStyle(
              fontSize: wd / 22,
            ),
            controller: locationController,
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
          TextField(
            style: TextStyle(
              fontSize: wd / 22,
            ),
            controller: phoneController,
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
                Icons.phone,
                size: wd / 12,
              ),
              hintText: "Edit Your Phone Number",
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
            "Certificates & Skills",
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: wd / 1.7,
                        child: TextField(
                          style: TextStyle(
                            fontSize: wd / 22,
                          ),
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
                              EvaIcons.book,
                              size: wd / 12,
                            ),
                            hintText: "Enter a new skill",
                            hintStyle: TextStyle(
                              fontSize: wd / 18,
                              fontFamily: "Cocan",
                            ),
                          ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "-flutter developer",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: wd / 18,
                            fontFamily: "Cocan",
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              EvaIcons.minusCircle,
                              size: wd / 15,
                              color: Colors.black,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: wd,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "-flutter developer",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: wd / 18,
                            fontFamily: "Cocan",
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              EvaIcons.minusCircle,
                              size: wd / 15,
                              color: Colors.black,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: wd,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "-flutter developer",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: wd / 18,
                            fontFamily: "Cocan",
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              EvaIcons.minusCircle,
                              size: wd / 15,
                              color: Colors.black,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: he / 30,
          ),
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
}
