import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
import 'package:moon_nest/src/views/progress/progressPage.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 71.h,),
                const Center(
                    child: Image(image: AssetImage("assets/images/Illustration (1).png"))),
                SizedBox(height: 48.h,),
                Text("We’re sorry",style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
                Text("We can’t find anything. ",style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(37, 45, 65, 1)
                ),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  height: 1,
                  color: Color.fromRGBO(203, 213, 225, 1),
                ),
                SizedBox(height: 24.h,),
                Text("Try searching for: ",style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
                GroupButton(
                    isRadio: false,
                    options: GroupButtonOptions(
                        buttonHeight: 36.h,
                        textPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                        borderRadius: BorderRadius.circular(6),
                        unselectedColor: const Color.fromRGBO(241, 245, 249, 1),
                        unselectedTextStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),
                        selectedTextStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 1)
                        ),
                        spacing: 4.w,
                        selectedColor: const Color.fromRGBO(37, 45, 65, 1),
                        mainGroupAlignment: MainGroupAlignment.start
                    ),
                    buttons: const[
                  "Relaxation", "Breathing", "Focus", "Nature", "Energy", "Peace"
                ]),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 48.h),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const ProgressPage();
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
                        child: Text("Search",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1)
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
