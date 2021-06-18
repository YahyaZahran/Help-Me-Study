import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/courses_controller.dart';
import 'package:testap/controllers/posts_controller.dart';
import 'package:testap/pages/add_post.dart';
import 'package:testap/pages/courses_page/courses_page.dart';
import 'package:testap/pages/posts_page/posts_page.dart';
import 'package:testap/pages/tutors_page/tutor_widget.dart';
import 'package:testap/utils/navigatable_page.dart';
import 'my_profile/my_profile.dart';
import 'search_page.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PostsController());
    Get.put(CoursesController());
    return NavigateablePage(
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () => Get.to(() => SearchPage()),
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
          body: PostsPage(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.post_add),
            onPressed: () => Get.to(() => AddPostPage()),
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
          body: CoursesPage(),
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
