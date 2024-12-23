import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
import 'package:moon_nest/src/widgets/resultspage.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  SfRangeValues _values = const SfRangeValues(5, 20);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20.5.w,vertical: 15.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.close))
              ],
            ),
            Text("Intensity:",style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color:const Color.fromRGBO(37, 45, 65, 1)
            ),),
            Container(
              height: 48.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(241, 245, 249, 1),
                borderRadius: BorderRadius.circular(12)
              ),
              child: GroupButton(
                  options: GroupButtonOptions(
                    selectedShadow: [
                      const BoxShadow(
                        color: Color.fromRGBO(113, 128, 150, 0.08),
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        spreadRadius: 0
                      )
                    ],
                    selectedColor:const Color.fromRGBO(255, 255, 255, 1),
                    selectedTextStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(29, 172, 146, 1)
                    ),
                    unselectedColor:Colors.transparent,
                    unselectedTextStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(100, 116, 139, 1)
                    ),
                    // mainGroupAlignment: MainGroupAlignment.spaceBetween,
                    groupingType: GroupingType.row,
                    spacing: 0,
                    buttonHeight: 40.h,
                    buttonWidth: 109.w,
                    borderRadius: BorderRadius.circular(8),
                      mainGroupAlignment: MainGroupAlignment.spaceBetween
                  ),
                  buttons: const[
                "Beginner",
                "Intermediate",
                "Advanced"
              ]),
            ),
            SizedBox(height: 16.h,),
            const Divider(
              height: 1,
              color: Color.fromRGBO(203, 213, 225, 1),
            ),
            SizedBox(height: 16.h,),
            Text("Best for",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color:const Color.fromRGBO(37, 45, 65, 1)
            ),),
            GroupButton(
                isRadio: false,
                options: GroupButtonOptions(
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
                  buttonHeight: 36.h,
                  textPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
                  borderRadius: BorderRadius.circular(6),
                  unselectedColor: Colors.transparent,
                  spacing: 4.w,
                  selectedColor: const Color.fromRGBO(37, 45, 65, 1),
                  mainGroupAlignment: MainGroupAlignment.spaceBetween
                ),
                buttons: const[
              "All", "Relaxation", "Breathing", "Focus", "Nature", "Healing", "Energy", "Peace", "Sleep",
              "Love", "Relief", "Creativity"
            ]),
            SizedBox(height: 16.h,),
            const Divider(
              height: 1,
              color: Color.fromRGBO(203, 213, 225, 1),
            ),
            SizedBox(height: 16.h,),
            Text("Duration: ${_values.start.round()}-${_values.end.round()}min",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color:const Color.fromRGBO(37, 45, 65, 1)
            ),),
            SizedBox(height: 12.h,),
            SfRangeSlider(
              values: _values,
              onChanged: (value) {
              setState(() {
                _values = value;
              });
            },
              min: 0,
              max: 40,
              showLabels:true,
              interval: 5,
              activeColor: const Color.fromRGBO(37, 45, 65, 1),
              inactiveColor: const Color.fromRGBO(241, 245, 249, 1),
              startThumbIcon: const Icon(Icons.circle,color: Colors.white,size: 10,),
              endThumbIcon: const Icon(Icons.circle,color: Colors.white,size: 10,),
              stepSize: 5,
            ),
            SizedBox(height: 40.h,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ResultsPage();
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
                  child: Text("Apply Filter",style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(255, 255, 255, 1)
                  ),),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            Center(child: Text("Clear filter",style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(37, 45, 65, 1),
                decoration: TextDecoration.underline,
                decorationColor:const Color.fromRGBO(37, 45, 65, 1),
            ),)),
          ],
        ),
      )
    );
  }
}
