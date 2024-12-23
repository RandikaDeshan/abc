import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moon_nest/src/widgets/raincard.dart';

class SongBottomSheet extends StatelessWidget {
  const SongBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w,right: 24.w,top: 24.h),
              child: Container(
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
                    SizedBox(width: 16.w,),
                    SvgPicture.asset("assets/images/Vector1.svg",color: const Color.fromRGBO(18, 24, 38, 1),),
                    SizedBox(
                      height: 56.h,
                      width: 200.w,
                      child:  TextField(
                        decoration: InputDecoration(
                          hintText: "What do you want to listen?",
                            hintStyle: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(148, 163, 184, 1)
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none
                            )
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/images/Filter.svg",height: 20.h,width: 20.w,),
                    SizedBox(width: 18.w,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 28.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rain and Storm Sounds",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                  Text.rich(
                    TextSpan(
                      text: "24 ",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(18, 24, 38, 1)
                      ),
                      children: [
                        TextSpan(
                          text: "sessions",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(18, 24, 38, 1)
                          ),
                        )
                      ]
                    )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: SizedBox(
                height: 170.h,
                child: ListView.builder(itemCount: 12,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return const RainCard();
                },),
              ),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Wandering in Nature",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                  Text.rich(
                      TextSpan(
                          text: "14 ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(29, 172, 146, 1)
                          ),
                          children: [
                            TextSpan(
                              text: "sessions",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(29, 172, 146, 1)
                              ),
                            )
                          ]
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: SizedBox(
                height: 170.h,
                child: ListView.builder(itemCount: 12,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return const RainCard();
                },),
              ),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("At the Beach",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                  Text.rich(
                      TextSpan(
                          text: "8 ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(29, 172, 146, 1)
                          ),
                          children: [
                            TextSpan(
                              text: "sessions",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(29, 172, 146, 1)
                              ),
                            )
                          ]
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: SizedBox(
                height: 170.h,
                child: ListView.builder(itemCount: 12,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return const RainCard();
                },),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
