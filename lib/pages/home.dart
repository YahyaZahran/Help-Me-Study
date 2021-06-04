import 'package:flutter/material.dart';
import 'package:testap/pages/tutors_page/tutor_widget.dart';
import 'package:testap/utils/navigatable_page.dart';

import 'courses_page/course_widget.dart';
import 'my_profile/my_profile.dart';
import 'posts_page/post_widget.dart';
import 'search_page.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigateablePage(
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
          onPressed: () {},
        ),
      ],
      children: [
        NavigateablePageChild(
          title: 'الرئيسية',
          icon: Icons.home,
          body: ListView.builder(
            itemBuilder: (_, __) => PostWidget(),
            itemCount: 10,
          ),
        ),
        NavigateablePageChild(
          title: 'المعلمون',
          icon: Icons.group,
          body: ListView.builder(
            itemBuilder: (_, __) => TutorWidget(),
            itemCount: 10,
          ),
        ),
        NavigateablePageChild(
          title: 'الدورات',
          icon: Icons.book_rounded,
          body: ListView.builder(
            itemBuilder: (_, __) => CourseWidget(
              title: 'تعلم جدول الضرب بسرعة البرق',
              description:
                  'طريقة رائعة جدا و سحرية في تعليم جدول الضرب و هي ما بترحم ابدا',
              locatoin: 'حمص-عكرمة الجديدة -معهد الامل',
              authorName: 'يحيى الزهران',
              authorImageUrl: '',
              coverUrl: '',
            ),
            itemCount: 10,
          ),
        ),
        NavigateablePageChild(
          title: 'ملفي الشخصي',
          icon: Icons.person,
          body: MyProfile(),
        ),
      ],
    );
  }
}
