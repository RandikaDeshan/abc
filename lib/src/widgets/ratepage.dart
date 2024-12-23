import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';

class RatePage extends StatelessWidget {
  const RatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return const BottomNavPage();
          },));
        }, icon: const Icon(Icons.clear)),
        title:Text("Session completed",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 46.h,),
              Center(
                child: Container(
                  height: 152.h,
                  width: 152.w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/images/image7.png"),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10.13),
                  ),
                ),
              ),
              SizedBox(height: 46.h,),
              Text("Lion’s breath",style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(37, 45, 65, 1)
              ),),
              SizedBox(height: 3.h,),
              Text("Sleep meditation",style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(37, 45, 65, 1)
              ),),
              SizedBox(height: 9.h,),
              Container(
                height: 29.81.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.13),
                  color: const Color.fromRGBO(241, 245, 249, 1)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 11.w),
                  child: Text("27 min added ",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                ),
              )
            ],
          ),
          Column(
            children: [
              Text("Did you enjoy this session?",style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(37, 45, 65, 1)
              ),),
              SizedBox(height: 32.h,),
              RatingBar.builder(
                itemBuilder: (context, index) => const Icon(Icons.star,color:Color.fromRGBO(29, 172, 146, 1),),
                onRatingUpdate:(value) {},
                initialRating: 4,
                itemPadding: EdgeInsets.symmetric(horizontal: 5.5.w),
                tapOnlyMode: true,
                itemSize: 40,
                unratedColor: const Color.fromRGBO(148, 163, 184, 1),
              ),
              SizedBox(height: 32.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
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
                    child: Text("Rate",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1)
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 48.h,)
            ],
          )
        ],
      ),
    );
  }
}
