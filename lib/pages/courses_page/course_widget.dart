import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/models/course.dart';
import 'package:testap/pages/course_page/course_page.dart';

class CourseWidget extends StatelessWidget {
  final Course course;

  const CourseWidget({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => Subjectpage())),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  width: 300,
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //FIXME Use NetworkImage with [coverUrl]
                      image: AssetImage(
                        'assets/images/Cover.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                course.title,
                style: GoogleFonts.getFont(
                  'Almarai',
                  fontSize: 15.0.sp,
                ),
              ),
              SizedBox(height: 10),
              Text(
                course.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.getFont(
                  'Tajawal',
                  fontSize: 10.0.sp,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.place,
                      size: 20,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'locatoin',
                    style: GoogleFonts.getFont(
                      'Almarai',
                      fontSize: 9.0.sp,
                      color: Theme.of(context).accentColor,
                    ),
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      //FIXME use NetworkImage with [authorImageUrl]
                      child: Image.asset('assets/images/Cover.png'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    course.authorName,
                    style: GoogleFonts.getFont(
                      'Almarai',
                      fontSize: 9.0.sp,
                      color: Theme.of(context).accentColor,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
