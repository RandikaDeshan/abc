import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moon_nest/src/widgets/categorycard.dart';
import 'package:moon_nest/src/widgets/explorecard.dart';

import '../widgets/filterpage.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 60.h,),
            Container(
              height: 56.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(241, 245, 249, 1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: const Color.fromRGBO(29, 172, 146, 1),
                      width: 1
                  )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 16.w,),
                      SvgPicture.asset("assets/images/Vector1.svg",color: const Color.fromRGBO(18, 24, 38, 1),),
                      SizedBox(
                        height: 56.h,
                        width: 220.w,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "What do you want to listen?",
                              hintStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(148, 163, 184, 1)
                              ),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet(context: context, builder: (context) {
                              return const FilterPage();
                            },);
                          },
                          child: SvgPicture.asset("assets/images/Filter.svg",height: 20.h,width: 20.w,)),
                      SizedBox(width: 18.w,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Browse all",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
              ],
            ),
            Expanded(
                child:GridView.builder(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 8,childAspectRatio: 1.5),itemCount: 12, itemBuilder: (context, index) {
                  return SizedBox(
                      width: 163.w,
                      child: const  ExploreCard());
                },)
            )
          ],
        ),
      )
    );
  }
}
