import 'dart:io';

import 'package:sizer/sizer.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/navigation_controller.dart';

class NavigateablePageChild {
  @required
  final String title;
  @required
  final IconData icon;
  @required
  final Widget body;
  final FloatingActionButton floatingActionButton;

  NavigateablePageChild(
      {this.title, this.icon, this.body, this.floatingActionButton});
}

class NavigateablePage extends StatelessWidget {
  @required
  final List<Widget> actions;

  @required
  final List<NavigateablePageChild> children;

  const NavigateablePage({Key key, this.children, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<NavigationController>(
        init: NavigationController(children.length),
        builder: (controller) {
          return WillPopScope(
            onWillPop: () async {
              if (!controller.inHome) {
                controller.setPage(0);
              } else {

                Get.dialog(
                  AlertDialog(
                    title: Text(
                      'انت على وشك الخروج',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontFamily: 'kofi',
                        fontSize: 15.0.sp,
                      ),
                    ),
                    content: Text(
                      'اذا كنت متأكد من الخروج من التطبيق اضغط موافق',
                      style: TextStyle(
                        fontFamily: 'cairo',
                        fontSize: 12.0.sp,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Text(
                          'الغاء',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'kofi',
                        fontSize: 12.0.sp,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => exit(0),
                        child: Text(
                          'موافق',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'kofi',
                        fontSize: 12.0.sp,
                          ),
                        ),
                      ),
                     
                    ],
                  ),
                );
              }
              return false;
            },
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 2,
                actions: actions,
                title: Text(
                  children[controller.currentIdx].title,
                  style: TextStyle(
                    fontFamily: 'changa',
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              body: children[controller.currentIdx].body,
              floatingActionButton:
                  children[controller.currentIdx].floatingActionButton,
              bottomNavigationBar: FFNavigationBar(
                onSelectTab: controller.setPage,
                selectedIndex: controller.currentIdx,
                items: children
                    .map(
                      (item) => FFNavigationBarItem(
                        iconData: item.icon,
                        label: item.title,
                      ),
                    )
                    .toList(),
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
            ),
          );
        });
  }
}
