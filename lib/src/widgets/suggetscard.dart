import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../views/home/songpage.dart';

class SuggestCard extends StatelessWidget {
  const SuggestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 12.h),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SongPage();
          },));
        },
        child: Container(
          height: 192.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage("assets/images/image1.png"),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h,left: 22.w),
                      child: Container(
                        width: 61.w,
                        height: 22.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color.fromRGBO(255, 255, 255, 0.4)
                        ),
                        child: Center(
                          child: Text("Beginner",style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              Container(
                height: 68.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 22.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Wondering mind",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),),
                          SizedBox(height: 6.h,),
                          Row(
                            children: [
                              const Icon(Icons.mic,color: Colors.white,size: 16,),
                              SizedBox(width: 4.w,),
                              Text("Guided",style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),),
                              SizedBox(width: 20.w,),
                              const Icon(Icons.access_time_filled,color: Colors.white,size: 12,),
                              SizedBox(width: 4.w,),
                              Text("12 min",style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 22.w),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(15, 23, 42, 0.5),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.star,color: Color.fromRGBO(251, 191, 36, 1),size: 12,),
                              Text("4.8",style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                      )
                    )
                  ],
                ),
              ).blurry(
                blur: 15,
                  padding: const EdgeInsets.all(0),
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                height: 68.h,
                color: const Color.fromRGBO(20, 98, 65, 0.2)
              )
            ],
          ),
        ),
      ),
    );
  }
}
