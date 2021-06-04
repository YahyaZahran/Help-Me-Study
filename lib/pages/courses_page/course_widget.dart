import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/pages/course_page/course_page.dart';

class CourseWidget extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String description;
  final String authorImageUrl;
  final String authorName;
  final String locatoin;

  const CourseWidget({
    Key key,
    @required this.coverUrl,
    @required this.title,
    @required this.description,
    @required this.authorImageUrl,
    @required this.authorName,
    @required this.locatoin,
  }) : super(key: key);
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
                title,
                style: TextStyle(fontFamily: 'kofi', fontSize: 14.0.sp),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'tajwal',
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
                    locatoin,
                    style: TextStyle(
                      fontFamily: 'kofi',
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
                    authorName,
                    style: TextStyle(
                      fontFamily: 'kofi',
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
