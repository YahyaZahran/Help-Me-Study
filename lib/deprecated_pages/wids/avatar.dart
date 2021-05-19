// import 'dart:io';

// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:flutter/material.dart';

// class MyAvatar extends StatefulWidget {
//   @override
//   _MyAvatarState createState() => _MyAvatarState();
// }

// class _MyAvatarState extends State<MyAvatar> {
//   @override
//   Widget build(BuildContext context) {
//     double wd = MediaQuery.of(context).size.width;
//     double he = MediaQuery.of(context).size.height;
//     return ImagePickerWidget(
//       modalCameraIcon: Icons.camera_alt_outlined,
//       diameter: wd / 5,
//       shape: ImagePickerWidgetShape.circle,
//       editIcon: Icon(
//         Icons.add_a_photo,
//         color: Color(0xA4000000),
//         size: wd / 12,
//       ),
//       backgroundColor: Color(0xFFB9B8B8),
//       isEditable: true,
//       onChange: (File file) {
//         print("I changed the file to: ${file.path}");
//       },
//     );
//   }
// }
