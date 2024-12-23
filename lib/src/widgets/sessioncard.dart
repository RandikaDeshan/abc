import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../views/home/songpage.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const SongPage();
        },));
      },
      child: SizedBox(
        height: 88.h,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: 72.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(image: AssetImage("assets/images/image5.png"),fit: BoxFit.cover)
                ),
              ),
              SizedBox(width: 12.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Lion’s breath",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                  Row(
                    children: [
                      const Icon(Icons.mic,color:Color.fromRGBO(29, 172, 146, 1),size: 16,),
                      SizedBox(width: 4.w,),
                      Text("Guided",style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(18, 24, 38, 1)
                      ),),
                      SizedBox(width: 16.w,),
                      const Icon(Icons.access_time_filled,color:Color.fromRGBO(29, 172, 146, 1),size: 12,),
                      SizedBox(width: 4.w,),
                      Text("25 min",style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(18, 24, 38, 1)
                      ),),
                    ],
                  ),
                  Text("Beginner",style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
