import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:testap/deprecated_pages/pages/sign_up_page.dart';
import 'main_page.dart';

class SignInPage extends StatelessWidget {
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
            SizedBox(height: he / 40),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: wd / 9,
                fontFamily: "Cocan",
                color: Colors.white,
              ),
            ),
            Text(
              "Sign in to continue",
              style: TextStyle(
                fontSize: wd / 12,
                fontFamily: "Cocan",
                color: Colors.grey,
              ),
            ),
            SizedBox(height: he / 10),
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
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: wd / 20, height: 0.5),
                    prefixIcon: Icon(
                      EvaIcons.emailOutline,
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
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: wd / 20, height: 0.5),
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
                          color: Colors.grey,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: he / 5),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(),
                          ));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: wd / 17,
                        fontFamily: "Cocan",
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
            SizedBox(height: he / 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I'm a new user .",
                  style: TextStyle(
                    fontSize: wd / 20,
                    fontFamily: "Cocan",
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      )),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: wd / 18,
                      fontFamily: "Cocan",
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
