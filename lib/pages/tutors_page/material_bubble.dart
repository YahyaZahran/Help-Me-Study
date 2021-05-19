import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MaterialBubble extends StatelessWidget {
  const MaterialBubble({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).accentColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        'علم الجنين',
        style: TextStyle(
          fontFamily: 'cairo',
          fontSize: 12.0.sp,
        ),
      ),
    );
  }
}
