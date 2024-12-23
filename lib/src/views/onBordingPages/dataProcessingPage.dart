import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';
import 'package:moon_nest/src/views/progress/progressPage.dart';

class Dataprocessingpage extends StatefulWidget {
  const Dataprocessingpage({super.key});

  @override
  State<Dataprocessingpage> createState() => _DataprocessingpageState();
}

class _DataprocessingpageState extends State<Dataprocessingpage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _showDialog());
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BottomNavPage()),
        );
      },
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Clarity would like to send you notifications'),
          content: const Text(
            'Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Don\'t Allow',
                style: TextStyle(color: Colors.teal),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Allow',
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 144.h),
              child: Container(
                width: 327.w,
                height: 376.h,
                child: Column(
                  children: [
                    const Text(
                      'Thank you for sharing',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'We are taking your data to \n create personalized app experience.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(height: 36.h),
                    Container(
                      width: 238.w,
                      height: 238.h,
                      child: Image.asset(
                        'assets/images/percentageImage/Percentage loader.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 96.h, left: 24.w, right: 24.w),
            child: Center(
              child: Container(
                width: 180.w,
                height: 104.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/percentageImage/check.png',
                          width: 24.w,
                          height: 24.h,
                        ),
                        SizedBox(width: 8.w),
                        const Expanded(
                          child: Text(
                            'Analyzing answers',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/percentageImage/check.png',
                          width: 24.w,
                          height: 24.h,
                        ),
                        SizedBox(width: 8.w),
                        const Expanded(
                          child: Text(
                            'Performing calculations',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/percentageImage/check.png',
                          width: 24,
                          height: 24.h,
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Text(
                            'Analyzing answers',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
