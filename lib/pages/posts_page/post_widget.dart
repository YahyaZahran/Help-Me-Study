import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../color_pallete.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 18,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
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
                          Text(
                            '20 دقيقة',
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
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
            // SizedBox(height: 15),
            Divider(),
            Text(
              'مرحبا .. بدي حدا يعلمني شلون اخلص من هالمواد الخرى باسرع وقت ... وشقد ما بدو بعطيه',
              style: TextStyle(
                fontFamily: 'tajwal',
              ),
            ),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // width: 60,
                  padding: EdgeInsets.all(8),
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFE2E2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Color(0xffFF6868),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '15',
                        style: TextStyle(
                          fontFamily: 'tajwal',
                          color: Color(0xffFF6868),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  // width: 60,
                  padding: EdgeInsets.all(8),
                  height: 35,
                  decoration: BoxDecoration(
                    color: ColorPalletes.bluegrey2.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onTap: () {
                      showMaterialModalBottomSheet(
                        context: context,
                        builder: (builder) => SafeArea(
                          child: Container(
                            // padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'التعليقات',
                                          style: TextStyle(
                                            fontFamily: 'changa',
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 15.0.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Divider(height: 8),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: 10,
                                          itemBuilder: (_, __) => Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image: AssetImage(
                                                                      'assets/images/Cover.png'),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              width: 50,
                                                              height: 50,
                                                            ),
                                                            SizedBox(width: 15),
                                                            Text(
                                                              'يحيى الزهران',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'kofi',
                                                                fontSize:
                                                                    12.0.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        '20 دقيقة',
                                                        style: TextStyle(
                                                          fontFamily: 'kofi',
                                                          fontSize: 9.0.sp,
                                                          color:
                                                              Theme.of(context)
                                                                  .accentColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'كيفك معلم .. انا جاهز لعيونك',
                                                    style: TextStyle(
                                                      fontFamily: 'tajwal',
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(8),
                                            hintText: 'اكتب تعليقاً',
                                            hintStyle: TextStyle(
                                              fontFamily: 'tajwal',
                                            )),
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.send),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.comment,
                          size: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          '15',
                          style: TextStyle(
                            fontFamily: 'tajwal',
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
