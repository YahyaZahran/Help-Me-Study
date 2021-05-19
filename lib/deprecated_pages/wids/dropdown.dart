import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  final List<String> items;

  const MyDropDown({Key key, this.items}) : super(key: key);
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String selectedDay;
  @override
  void initState() {
    selectedDay = widget.items.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    return DropdownButton<String>(
      style: TextStyle(
          fontSize: wd / 18, fontFamily: "Cocan", color: Color(0xFF3F3F3F)),
      value: selectedDay,
      items: widget.items.map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (v) {
        setState(() {
          selectedDay = v;
        });
      },
    );
  }
}
