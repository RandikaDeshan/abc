import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConditionsPage extends StatelessWidget {
  const ConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text("Terms and conditions",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18.h,),
            Text("1. Acceptance of Terms",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
            SizedBox(height: 12.h,),
            Text("By downloading, installing, accessing, or using [Your Mobile App Name], you agree to comply with and be bound by these terms and conditions, along with our Privacy Policy. If you do not agree with any part of these terms, you may not use our app.",style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
            SizedBox(height: 27.h,),
            Text("2. License",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
            SizedBox(height: 12.h,),
            Text("We grant you a non-exclusive, non-transferable, limited license to use [Your Mobile App Name] solely for your personal, non-commercial purposes, subject to these terms and the applicable app store's terms of service.",style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
            SizedBox(height: 27.h,),
            Text("3. User Account",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
            SizedBox(height: 12.h,),
            Text("Some features of [Your Mobile App Name] may require you to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete.",style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
            SizedBox(height: 27.h,),
            Text("4. Use of the App",style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
            SizedBox(height: 12.h,),
            Text("You agree to use [Your Mobile App Name] only for lawful purposes and in a manner consistent with all applicable local, national, and international laws and regulations.",style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(18, 24, 38, 1)
            ),),
          ],
        ),
      ),
    );
  }
}
