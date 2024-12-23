import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/main.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moon_nest/src/views/progress/editSession.dart';
import 'package:moon_nest/src/views/progress/myGoal.dart';

class DayPage extends StatefulWidget {
  const DayPage({
    super.key,
  });

  @override
  State<DayPage> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  late String _currentDate;
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentDate = _getCurrentDate();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _currentDate = _getCurrentDate();
      });
    });
  }

  String _getCurrentDate() {
    return DateFormat('MMM dd, yyyy').format(DateTime.now());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Container(
              width: 327.w,
              height: 225.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfF1F5F9).withOpacity(1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 24.h),
                    child: Text(
                      _currentDate,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    //color: Colors.amber,
                    width: 249.74.w,
                    height: 129.74.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 24.w,
                          height: 24.h,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Center(
                          child: Container(
                            //color: Colors.red,
                            width: 129.74.w,
                            height: 129.74.h,
                            child: Image.asset(
                              'assets/images/progressPageImages/Percentage loader (1).png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 24.w,
                          height: 24.h,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            //color: Colors.amber,
            width: 334.w,
            height: 246.h,
            child: Column(
              children: [
                Container(
                  //color: Colors.red,
                  width: 334.w,
                  height: 28.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Daily sessions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        color: const Color(0xf252D41).withOpacity(1),
                        width: 74.w,
                        height: 28.h,
                        child: const Center(
                          child: Text(
                            '4:27 min',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Container(
                  // color: Colors.orange,
                  width: 334.w,
                  height: 88.h,
                  child: Row(
                    children: [
                      Container(
                        width: 72.w,
                        height: 72.h,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/progressPageImages/image (16).png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23.h,
                          bottom: 23.h,
                          left: 12.w,
                        ),
                        child: Container(
                          //color: Colors.red,
                          width: 185.w,
                          height: 42.h,
                          child: Column(
                            children: [
                              Container(
                                //color: Colors.blue,
                                width: 185.w,
                                height: 22.h,
                                child: Text(
                                  'Lion’s breath',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Container(
                                //color: Colors.grey,
                                width: 185.w,
                                height: 16.h,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/progressPageImages/Group.svg',
                                    ),
                                    Center(
                                      child: Text(
                                        'Guided',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/progressPageImages/clock.svg',
                                    ),
                                    const Text(
                                      '02:27 min',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Container(
                        //color: Colors.green,
                        width: 53.w,
                        height: 24.h,
                        child: Row(
                          children: [
                            Container(
                              //color: Colors.amber,
                              width: 24.w,
                              height: 24.h,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              //color: Colors.amber,
                              width: 24.w,
                              height: 24.h,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete),
                                padding: EdgeInsets.zero,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  // color: Colors.blue,
                  width: 334.w,
                  height: 88.h,
                  child: Row(
                    children: [
                      Container(
                        width: 72.w,
                        height: 72.h,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/progressPageImages/image (17).png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23.h,
                          bottom: 23.h,
                          left: 12.w,
                        ),
                        child: Container(
                          //color: Colors.red,
                          width: 185.w,
                          height: 42.h,
                          child: Column(
                            children: [
                              Container(
                                //color: Colors.blue,
                                width: 185.w,
                                height: 22.h,
                                child: Text(
                                  'Gentle Rain',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Container(
                                //color: Colors.grey,
                                width: 185.w,
                                height: 16.h,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/progressPageImages/Group (1).svg',
                                    ),
                                    Center(
                                      child: Text(
                                        'Un-guided',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/progressPageImages/clock.svg',
                                    ),
                                    const Text(
                                      '02:27 min',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Container(
                        //color: Colors.green,
                        width: 53.w,
                        height: 24.h,
                        child: Row(
                          children: [
                            Container(
                              //color: Colors.amber,
                              width: 24.w,
                              height: 24.h,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Editsession(),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.edit),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              //color: Colors.amber,
                              width: 24.w,
                              height: 24.h,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete),
                                padding: EdgeInsets.zero,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xff1E293B),
            ),
            width: 334.w,
            height: 66.h,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 12.h,
                    left: 12.w,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My daily goal',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '10 quiet min',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    right: 12.w,
                    top: 13.h,
                    bottom: 13.h,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyGoalPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 71.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: Color(0xf1DAC92).withOpacity(1),
                          borderRadius: BorderRadius.circular(6)),
                      child: const Center(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
