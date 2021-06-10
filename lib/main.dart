
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer_util.dart';

import 'material_app.dart';

void main() {

  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cons) {
      return OrientationBuilder(builder: (ctx, orin) {
        SizerUtil().init(cons, orin);
        return TestApp();
      });
    });
  }
}
