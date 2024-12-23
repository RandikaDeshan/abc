import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Editsession extends StatefulWidget {
  const Editsession({super.key});

  @override
  State<Editsession> createState() => _EditsessionState();
}

class _EditsessionState extends State<Editsession> {
  int selectIndex = 0;
  final List<String> switches = ['Guided', 'Unguided'];
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
        title: const Text(
          "Edit Session",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 152.w,
              height: 152.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.13.r),
              ),
              child: Image.asset(
                "assets/images/progressPageImages/image (17).png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Lion’s breath",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF252D41),
              ),
            ),
            Text(
              "Sleep meditation",
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF252D41),
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 48.h,
                    width: 216.w,
                    decoration: BoxDecoration(
                        color: Color(0xFFF1F5F9).withOpacity(1),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Center(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: switches.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectIndex = index;
                              });
                            },
                            child: Container(
                              width: 104.w,
                              height: 40.h,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: selectIndex == index
                                    ? const Color(0xFFFFFFFF).withOpacity(1)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Center(
                                child: Text(
                                  switches[index],
                                  style: TextStyle(
                                    color: selectIndex == index
                                        ? const Color(0x0f1dac92).withOpacity(1)
                                        : Colors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 36.h,
            ),
            Container(
              width: 211.w,
              height: 152.h,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F5F9).withOpacity(0),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  Text(
                    'Session Duration',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF252D41),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Expanded(
                    child: Row(
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
                                        fontSize:
                                            selectHours == index ? 32 : 14,
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
                                      fontSize:
                                          selectMinutes == index ? 32 : 14,
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 56.h,
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
            TextButton(
              onPressed: () {},
              child: Text(
                'Delete session',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: const Color(0x0f252d41).withOpacity(1),
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0x0f252d41).withOpacity(1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
