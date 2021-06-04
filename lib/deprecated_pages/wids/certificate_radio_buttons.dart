import 'package:flutter/material.dart';
import 'package:getwidget/components/radio/gf_radio.dart';

class CertificateBuilder extends StatefulWidget {
  final String str1;
  final String str2;

  const CertificateBuilder({Key key, this.str1, this.str2}) : super(key: key);
  @override
  _CertificateBuilderState createState() => _CertificateBuilderState();
}

class _CertificateBuilderState extends State<CertificateBuilder> {
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GFRadio(
              size: wd / 12,
              value: 1,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value;
                });
              },
              inactiveIcon: null,
              activeBorderColor: Colors.black,
              radioColor: Colors.black,
            ),
            SizedBox(width: 5),
            Text(
              widget.str1,
              style: TextStyle(
                fontSize: wd / 18,
                fontFamily: "Cocan",
                color: Colors.black,
              ),
            )
          ],
        ),
        SizedBox(width: wd / 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GFRadio(
              size: wd / 12,
              value: 2,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value;
                });
              },
              inactiveIcon: null,
              activeBorderColor: Colors.black,
              radioColor: Colors.black,
            ),
            SizedBox(width: 5),
            Text(
              widget.str2,
              style: TextStyle(
                fontSize: wd / 18,
                fontFamily: "Cocan",
                color: Colors.black,
              ),
            )
          ],
        ),
      ],
    );
  }
}
