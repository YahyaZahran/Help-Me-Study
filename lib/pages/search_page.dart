import 'dart:ui';

import 'package:flutter/material.dart';

import 'courses_page/course_widget.dart';
import 'posts_page/post_widget.dart';
import 'tutors_page/tutor_widget.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            title: TextField(
              cursorHeight: 25,
              autocorrect: false,
              autofocus: true,
              enableSuggestions: false,
              textInputAction: TextInputAction.search,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'ابحث هنا',
                hintStyle: TextStyle(fontFamily: 'kofi'),
                border: InputBorder.none,
              ),
            ),
            iconTheme: IconThemeData(color: Theme.of(context).accentColor),
            actions: [
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 52),
                child: Icon(
                  Icons.clear_outlined,
                  color: Theme.of(context).accentColor,
                ),
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'المنشورات',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontFamily: 'kofi',
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'المعلمون',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontFamily: 'kofi',
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'الدورات',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontFamily: 'kofi',
                    ),
                  ),
                ),
              ],
              indicatorWeight: 4,
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemBuilder: (_, __) => PostWidget(),
                itemCount: 4,
              ),
              ListView.builder(
                itemBuilder: (_, __) => TutorWidget(),
                itemCount: 4,
              ),
              ListView.builder(
                itemBuilder: (_, __) => CourseWidget(
                        title: 'تعلم جدول الضرب بسرعة البرق',
                        description: 'طريقة رائعة جدا و سحرية في تعليم جدول الضرب و هي ما بترحم ابدا',
                        locatoin: 'حمص-عكرمة الجديدة -معهد الامل',
                        authorName: 'يحيى الزهران',
                        authorImageUrl: '',
                        coverUrl: '',
                      ),
                itemCount: 4,
              ),
            ],
          )),
    );
  }
}
