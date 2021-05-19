import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'courses_page/course_widget.dart';
import 'my_profile/my_profile.dart';
import 'posts_page/post_widget.dart';
import 'search_page.dart';
import 'tutors_page/tutor_widget.dart';

var strings = [
  'الرئيسية',
  'المعلمين',
  'الدورات',
  'انا',
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FFNavigationBar(
        onSelectTab: (d) {
          setState(() {
            idx = d;
          });
        },
        selectedIndex: idx,
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'الرئيسية',
          ),
          FFNavigationBarItem(
            iconData: Icons.group,
            label: 'المعلمين',
          ),
          FFNavigationBarItem(
            iconData: Icons.book_rounded,
            label: 'الدورات',
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'ملفي الشخصي',
          ),
        ],
        theme: FFNavigationBarTheme(
          barBackgroundColor: Theme.of(context).primaryColor,
          selectedItemBorderColor: Theme.of(context).accentColor,
          selectedItemBackgroundColor: Colors.white,
          selectedItemIconColor: Theme.of(context).accentColor,
          selectedItemLabelColor: Colors.white,
          unselectedItemIconColor: Theme.of(context).accentColor,
          unselectedItemLabelColor: Theme.of(context).accentColor,
        ),
      ),
      floatingActionButton: (idx == 0 || idx == 2)
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
            )
          : null,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage()));
            },
          ),
          IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {}),
        ],
        title: Text(
          strings[idx],
          style: TextStyle(
            fontFamily: 'changa',
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: idx == 0
          ? ListView.builder(
              itemBuilder: (_, __) => PostWidget(),
              itemCount: 10,
            )
          : idx == 1
              ? ListView.builder(
                  itemBuilder: (_, __) => TutorWidget(),
                  itemCount: 10,
                )
              : idx == 2
                  ? ListView.builder(
                      itemBuilder: (_, __) => CourseWidget(),
                      itemCount: 10,
                    )
                  : MyProfile(),
    );
  }
}
