import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/pages/profile/profile.dart';

import '../../color_pallete.dart';

import '../auth_info.dart';
import '../my_courses.dart';
import '../my_posts.dart';
import '../my_reviews.dart';
import '../my_skills.dart';
import '../personal_info.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Cover.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 75,
                          height: 75,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'يحيى الزهران',
                              style: TextStyle(
                                  fontFamily: 'kofi', fontSize: 14.0.sp),
                            ),
                            Text(
                              'جامعة البعث',
                              style: TextStyle(
                                fontFamily: 'kofi',
                                fontSize: 9.0.sp,
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: ColorPalletes.orange1.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'kofi',
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.star,
                          color: ColorPalletes.orange1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ProfilePage())),
                  child: SettingsItem(
                    title: 'عرض منظور الاشخاص',
                    icon: Icons.remove_red_eye,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => PersonalInfo())),
                  child: SettingsItem(
                    title: 'معلوماتي الشخصية',
                    icon: Icons.person,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AuthInfo())),
                  child: SettingsItem(
                    title: 'معلومات تسجيل الدخول',
                    icon: Icons.alternate_email,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MySkills())),
                  child: SettingsItem(
                    title: 'مهاراتي',
                    icon: Icons.psychology,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Card(
            child: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MyPosts())),
                  child: SettingsItem(
                    title: 'منشوراتي',
                    icon: Icons.assistant_photo_sharp,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MyCourses())),
                  child: SettingsItem(
                    title: 'دوراتي',
                    icon: Icons.book,
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => MyReviews())),
                  child: SettingsItem(
                    title: 'التقييمات',
                    icon: Icons.star,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Card(
            child: Column(
              children: [
                SettingsItem(
                  title: 'تسجيل الخروج',
                  icon: Icons.logout,
                ),
                Divider(),
                SettingsItem(
                  color: ColorPalletes.red1.shade400,
                  title: 'حذف حسابي',
                  icon: Icons.person_remove,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const SettingsItem({
    @required this.title,
    @required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: color ?? Theme.of(context).accentColor,
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'kofi',
              color: color ?? Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
