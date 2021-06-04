import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:testap/pages/auth/sign_in/sign_in.dart';
import 'color_pallete.dart';

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('ar', ''),
      supportedLocales: [Locale('ar', '')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ColorPalletes.bluegrey1,
        accentColor: ColorPalletes.bluegrey1.shade200,
        backgroundColor: Color(0xffF3F3F5),
      ),
      home: SignInPage(),
    );
  }
}
