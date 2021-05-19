import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testap/deprecated_pages/pages/profile.dart';
import 'package:testap/deprecated_pages/tabs/courses_tab.dart';
import 'package:testap/deprecated_pages/tabs/recent_tab.dart';
import 'package:testap/deprecated_pages/tabs/tutors_tab.dart';

import '../../pages/search_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text(
            'TESTAPP',
            style: TextStyle(fontFamily: 'Cocan', fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ));
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SearchPage(),
                  ),
                );
              },
            )
          ],
          brightness: Brightness.dark,
          bottom: TabBar(
            tabs: [
              Tab(title: 'Recent'),
              Tab(title: 'Tutors'),
              Tab(title: 'Courses'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RecentTab(),
            TutorsTab(),
            CoursesTab(),
          ],
        ),
      ),
    );
  }
}

class Tab extends StatelessWidget {
  final String title;
  const Tab({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'Cocan',
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

String getString() {
  Random rand = Random();
  int len = Random().nextInt(200);
  String ret = '';
  String alphabet = 'abcdefghijklmnoparstuvwxyz';
  for (int i = 0; i < len; i++) {
    if (rand.nextDouble() <= 0.1)
      ret += ' ';
    else
      ret += alphabet[rand.nextInt(alphabet.length)];
  }
  return ret;
}
