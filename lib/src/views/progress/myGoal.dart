import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyGoalPage extends StatefulWidget {
  const MyGoalPage({super.key});

  @override
  State<MyGoalPage> createState() => _MyGoalPageState();
}

class _MyGoalPageState extends State<MyGoalPage> {
  int selectHours = 8;
  int selectMinutes = 27;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          "My goal",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 64.h),
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/progressPageImages/Icon.png"),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Mindful minutes",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "How many minutes per day \n would you like to meditate? ",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Hour Picker using ListWheelScrollView
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      width: 50.w,
                      height: 100.h,
                      child: ListWheelScrollView.useDelegate(
                        itemExtent: 40.h,
                        onSelectedItemChanged: (int index) {
                          setState(() {
                            selectHours = index;
                          });
                        },
                        childDelegate: ListWheelChildBuilderDelegate(
                          builder: (context, index) {
                            return Center(
                              child: Text(
                                index.toString().padLeft(2, '0'),
                                style: TextStyle(
                                  fontSize: selectHours == index ? 32 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF252D41),
                                ),
                              ),
                            );
                          },
                          childCount: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 1.w,
                    height: 100.h,
                    color: Color(0xf121826).withOpacity(0.2),
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                  ),
                  // Minute Picker using ListWheelScrollView
                  Container(
                    width: 50.w,
                    height: 100.h,
                    child: ListWheelScrollView.useDelegate(
                      itemExtent: 40.h,
                      onSelectedItemChanged: (int index) {
                        setState(() {
                          selectMinutes = index;
                        });
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        builder: (context, index) {
                          return Center(
                            child: Text(
                              index.toString().padLeft(2, '0'),
                              style: TextStyle(
                                fontSize: selectMinutes == index ? 32 : 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF252D41),
                              ),
                            ),
                          );
                        },
                        childCount: 60,
                      ),
                    ),
                  ),
                  Container(
                    width: 1.w,
                    height: 100.h,
                    color: Color(0xf121826).withOpacity(0.2),
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                  ),
                  Text(
                    ' MIN',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF252D41),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 173.h,
              ),
              Container(
                width: 334.w,
                height: 60.h,
                padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    bottomRight: Radius.circular(12.r),
                    bottomLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1DAC92), Color(0xFF228E8E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 48.w, vertical: 8.h),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                      ),
                    ),
                  ),
                  child: Text(
                    'Save Changes',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
