import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:testap/pages/auth/sign_up/sign_up.dart';

import 'package:sizer/sizer.dart';

import '../../home.dart';

class SignInPage extends StatelessWidget {
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
              // Text(
              //   "Welcome",
              //   style: TextStyle(
              //     fontSize: 35.0.sp,
              //     fontFamily: "Cocan",
              //     color: Colors.white,
              //   ),
              // ),
              // Text(
              //   "Sign in to continue",
              //   style: TextStyle(
              //     fontSize: 25.0.sp,
              //     fontFamily: "Cocan",
              //     color: MyColors.secondaryText,
              //   ),
              // ),
              SizedBox(height: he / 40),
              Center(
                child: SizedBox(
                  width: 85.0.w,
                  height: 8.0.h,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 15.0.sp, height: 0.5),
                      prefixIcon: Icon(
                        EvaIcons.emailOutline,
                        size: 25.0.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: he / 18),
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
                          Radius.circular(15),
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 15.0.sp, height: 0.5),
                      prefixIcon: Icon(
                        EvaIcons.eyeOff,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          // TODO: Forget password Function
                        },
                        child: Text(
                          "Forget password?",
                          style: TextStyle(
                            fontSize: wd / 23,
                            fontFamily: "Roboto",
                            color: Colors.black54,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 5.0.h),
              Center(
                child: Container(
                  width: 85.0.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      },
                      child: Text(
                        "LogIn",
                        style: TextStyle(
                          fontSize: 20.0.sp,
                          fontFamily: "Cocan",
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              SizedBox(height: 15),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20.0.sp,
                          fontFamily: "Cocan",
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "I'm a new user .",
              //       style: TextStyle(
              //         fontSize: 15.0.sp,
              //         fontFamily: "Cocan",
              //         color: Colors.black38,
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () => Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => SignUpPage(),
              //           )),
              //       child: Text(
              //         "Sign up",
              //         style: TextStyle(
              //             fontSize: 18.0.sp,
              //             fontFamily: "Cocan",
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
