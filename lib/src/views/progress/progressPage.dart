import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/main.dart';
import 'package:moon_nest/src/views/progress/dayPage.dart';
import 'package:moon_nest/src/views/progress/monthPage.dart';
import 'package:moon_nest/src/views/progress/weekPage.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  int selectedIndex = 0;
  final List<String> tabs = ['Day', 'Week', 'Month'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Progress',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 48.h,
              width: 319.w,
              decoration: BoxDecoration(
                  color: Color(0xfF1F5F9).withOpacity(1),
                  borderRadius: BorderRadius.circular(12.r)),
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedIndex = index;
                        },
                      );
                    },
                    child: Container(
                      width: 106.33.w,
                      height: 40.h,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      // margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? const Color(0xfFFFFFF).withOpacity(1)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                              color: selectedIndex == index
                                  ? const Color(0xf1DAC92).withOpacity(1)
                                  : Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: IndexedStack(
                index: selectedIndex,
                children: const [
                  DayPage(),
                  WeekPage(),
                  Monthpage(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
