import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moon_nest/src/views/progress/dayPage.dart';
import 'package:moon_nest/src/views/progress/progressPage.dart';
import 'package:moon_nest/src/views/searchpage.dart';
import 'package:moon_nest/src/views/settingspage.dart';

import '../homepage.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}
int _currentIndex = 0;

final List<Widget> _pages = [
  const HomePage(),
  const SearchPage(),
  const ProgressPage(),
  const SettingsPage(),
];

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor:const Color.fromRGBO(29, 172, 146, 1),
        unselectedItemColor:const Color.fromRGBO(100, 116, 139, 1),
        selectedLabelStyle: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle:  TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
        ),
        items: [
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/images/Vector.svg",width: 24.w,height: 24.h,color: _currentIndex == 0 ? const Color.fromRGBO(37, 45, 65, 1) : const Color.fromRGBO(100, 116, 139, 1))
            ,label: "Home"),
        BottomNavigationBarItem(icon: _currentIndex == 1 ?SvgPicture.asset("assets/images/search-2-fill.svg",width: 24.w,height: 24.h,): SvgPicture.asset("assets/images/Vector1.svg",width: 24.w,height: 24.h,color:  const Color.fromRGBO(100, 116, 139, 1))
            ,label: "Discover"),
        BottomNavigationBarItem(icon: _currentIndex == 2 ?SvgPicture.asset("assets/images/file-chart-fill.svg",width: 24.w,height: 24.h,): SvgPicture.asset("assets/images/Vector2.svg",width: 24.w,height: 24.h,color: const Color.fromRGBO(100, 116, 139, 1))
            ,label: "Progress"),
        BottomNavigationBarItem(icon: _currentIndex == 3 ?SvgPicture.asset("assets/images/settings-fill.svg",width: 24.w,height: 24.h,):SvgPicture.asset("assets/images/Vector3.svg",width: 24.w,height: 24.h,color: const Color.fromRGBO(100, 116, 139, 1))
            ,label: "Settings")
      ],
      currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
