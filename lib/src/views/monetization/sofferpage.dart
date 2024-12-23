import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:slide_countdown/slide_countdown.dart';

class SOfferPage extends StatefulWidget {
  const SOfferPage({super.key});

  @override
  State<SOfferPage> createState() => _SOfferPageState();
}
int plan = 0;
class _SOfferPageState extends State<SOfferPage> {
  late Duration _remainingTime;
  Timer? _timer;
  final DateTime deadline = DateTime(2024,12,5,23,59,59);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _remainingTime = deadline.difference(DateTime.now());
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _remainingTime = deadline.difference(DateTime.now());

        if (_remainingTime.isNegative) {
          _timer?.cancel(); // Stop timer if the countdown is over
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer?.cancel();
  }
  
  @override
  Widget build(BuildContext context) {
    final days = _remainingTime.inDays;
    final hours = _remainingTime.inHours % 24;
    final minutes = _remainingTime.inMinutes % 60;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/image 13688.png"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 52.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 17.w),
                      child: IconButton(
                        style: IconButton.styleFrom(
                          fixedSize: Size(20.w, 20.h),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 1)
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close,size: 16,),color: Colors.black,),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color:const Color.fromRGBO(37, 45, 65, 1),
                      borderRadius: BorderRadius.circular(120.58)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 4.82.h),
                      child: Text("SPECIAL OFFER",style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(255, 255, 255, 1)
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 8.h,),
                Text(" Get this exclusive offer to gain full app benefits. ",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
                SizedBox(height: 8.h,),
                Text("45% OFF",style: TextStyle(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromRGBO(37, 45, 65, 1)
                ),),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Visibility(
                              visible: days>10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(days.toString().substring(0,1),style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                      color: const Color.fromRGBO(18, 24, 38, 1)
                                  ),),
                                ),
                              ),
                            ),
                            SizedBox(width: 4.w,),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(days<10?days.toString().substring(0,1):days.toString().substring(1,2),style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                    color: const Color.fromRGBO(18, 24, 38, 1)
                                ),),
                              ),
                            )
                          ],
                        ),
                        Text("days",style:TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Text(":",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(18, 24, 38, 1)
                      ),),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(hours<10?"0":hours.toString().substring(0,1),style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                    color: const Color.fromRGBO(18, 24, 38, 1)
                                ),),
                              ),
                            ),
                            SizedBox(width: 4.w,),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(hours<10?hours.toString().substring(0,1):hours.toString().substring(1,2),style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                    color: const Color.fromRGBO(18, 24, 38, 1)
                                ),),
                              ),
                            ),
                          ],
                        ),
                        Text("hours",style:TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Text(":",style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(18, 24, 38, 1)
                      ),),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(minutes<10?"0":minutes.toString().substring(0,1),style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                    color: const Color.fromRGBO(18, 24, 38, 1)
                                ),),
                              ),
                            ),
                            SizedBox(width: 4.w,),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(minutes<10?minutes.toString().substring(0,1):minutes.toString().substring(1,2),style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w900,
                                    color: const Color.fromRGBO(18, 24, 38, 1)
                                ),),
                              ),
                            )
                          ],
                        ),
                        Text("minutes",style:TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 35.h,),
                Container(
                  height: 264.h,
                  decoration:const BoxDecoration(
                      color:  Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24)
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.5.w,right: 19.5.w,top: 24.h),
                    child: Column(
                      children: [
                        Text("Pick your plan",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        SizedBox(height: 20.h,),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    plan = 1;
                                  });
                                },
                                child: Container(
                                  height: 87.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color:plan == 1? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(255, 255, 255, 1),
                                      border:Border.all(color: plan == 1? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1),
                                          width: plan == 1?4:1)
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("LOW",style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: plan == 1?const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text("\$x.xx ",style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700,
                                            color: plan == 1? const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text("monthly",style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                            color: plan == 1? const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    plan = 2;
                                  });
                                },
                                child: Container(
                                  height: 87.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color:plan == 2? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(255, 255, 255, 1),
                                      border:Border.all(color: plan == 2? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1),
                                          width: plan == 2?4:1)
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("MEDIUM",style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: plan == 2?const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text("\$x.xx ",style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700,
                                            color: plan == 2? const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text("monthly",style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                            color: plan == 2? const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w,),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    plan = 3;
                                  });
                                },
                                child: Container(
                                  height: 87.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color:plan == 3? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(255, 255, 255, 1),
                                      border:Border.all(color: plan == 3? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1),
                                          width: plan == 3?4:1)
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("HIGH",style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: plan == 3?const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text("\$x.xx ",style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700,
                                            color: plan == 3? const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text("monthly",style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                            color: plan == 3? const Color.fromRGBO(255, 255, 255, 1):const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const SOfferPage();
                            },));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient:const  LinearGradient(colors: [
                                  Color.fromRGBO(29, 172, 146, 1),
                                  Color.fromRGBO(29, 172, 146, 1),
                                  Color.fromRGBO(34, 142, 142, 1),
                                ],begin: Alignment.topCenter,
                                    end:  Alignment.bottomCenter)
                            ),
                            child: Center(
                              child: Text("Continue",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(255, 255, 255, 1)
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
