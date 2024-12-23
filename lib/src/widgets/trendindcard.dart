import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/widgets/suggetscard.dart';

import '../views/home/songpage.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h,right: 16.w),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SongPage();
          },));
        },
        child: Container(
          width: 194.w,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage("assets/images/image2.png"),fit: BoxFit.cover),
            borderRadius:BorderRadius.circular(12)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12.h,left: 16.w),
                child: Row(
                  children: [
                    Container(
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("On the Beach",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),),
                    SizedBox(height: 8.h,),
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
                        Text("25 min",style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                      ],
                    )
                  ],
                ),
              ).blurry(
                blur: 15,
                  height: 78.h,
                  padding: const EdgeInsets.all(0),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                  color:const Color.fromRGBO(15, 23, 42, 0.2)
              )
            ],
          ),
        ),
      ),
    );
  }
}
