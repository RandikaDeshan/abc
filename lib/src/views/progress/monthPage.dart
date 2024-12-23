import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class Monthpage extends StatefulWidget {
  const Monthpage({super.key});

  @override
  State<Monthpage> createState() => _MonthpageState();
}

class _MonthpageState extends State<Monthpage> {
  late String _currentDate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentDate = _getCurrentDate();
  }

  String _getCurrentDate() {
    return DateFormat('MMM dd, yyyy').format(DateTime.now());
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
                    child: Container(
                      width: 254.w,
                      height: 24.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios),
                            padding: EdgeInsets.zero,
                          ),
                          Center(
                            child: Text(
                              _currentDate,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            padding: EdgeInsets.zero,
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
                    width: 276.w,
                    height: 129.74.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            //color: Colors.red,
                            width: 276.w,
                            height: 126.h,
                            child: Image.asset(
                              'assets/images/progressPageImages/monthPage/Bar chart.png',
                              fit: BoxFit.cover,
                            ),
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
            width: 327.w,
            height: 249.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.red,
                  width: 250.w,
                  height: 70.h,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monthly progress',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        'On average, you practiced mindfulness 11% less this month  compared to last.',
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  //color: Colors.orange,
                  width: 327.w,
                  height: 60.h,
                  child: Column(
                    children: [
                      Container(
                        width: 327.w,
                        height: 48.h,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Container(
                              //color: Colors.blue,
                              width: 91.w,
                              height: 60.h,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    //color: Colors.white,
                                    width: 26.w,
                                    height: 52.h,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 3.h),
                                      child: Text(
                                        "6",
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //color: Colors.amber,
                                    width: 61.w,
                                    height: 49.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'min/day',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          'This week',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 327.w,
                        height: 8.h,
                        child: Image.asset(
                          'assets/images/progressPageImages/weekPage/Frame 1937.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  //color: Colors.orange,
                  width: 327.w,
                  height: 60.h,
                  child: Column(
                    children: [
                      Container(
                        width: 327.w,
                        height: 48.h,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            Container(
                              //color: Colors.blue,
                              width: 91.w,
                              height: 60.h,
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    color: Colors.white,
                                    width: 26.w,
                                    height: 44.h,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 3.h),
                                      child: Text(
                                        "12",
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //color: Colors.amber,
                                    width: 61.w,
                                    height: 49.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'min/day',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          'This week',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 327.w,
                        height: 8.h,
                        child: Image.asset(
                          'assets/images/progressPageImages/weekPage/Frame 1937.png',
                          fit: BoxFit.cover,
                        ),
                      )
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
                    //color: Colors.amber,
                    alignment: Alignment.centerLeft,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Goal streak',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '10 days in a row',
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
                    child: Image.asset(
                      'assets/images/progressPageImages/monthPage/Lines (1).png',
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
