import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../views/home/songpage.dart';

class RainCard extends StatelessWidget {
  const RainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h,right: 12.w),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SongPage();
          },));
        },
        child: Container(
          width: 140.w,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage("assets/images/image3.png"),fit: BoxFit.cover),
              borderRadius:BorderRadius.circular(12)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gentle Rain",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),),
                    SizedBox(height: 2.h,),
                    Row(
                      children: [
                        const Icon(Icons.mic,color: Colors.white,size: 16,),
                        SizedBox(width: 4.w,),
                        Text("Unguided",style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),),
                        SizedBox(width: 8.w,),
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
                  height: 59.h,
                  padding: const EdgeInsets.all(0),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                  color: const Color.fromRGBO(15, 23, 42, 0.2)
              )
            ],
          ),
        ),
      ),
    );
  }
}
