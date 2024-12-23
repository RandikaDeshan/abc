import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/services/auth/authservices.dart';
import 'package:moon_nest/src/views/auth/signin/signinpage.dart';
import 'package:moon_nest/src/views/auth/signup/termspage.dart';
import 'package:moon_nest/src/views/settings/faqpage.dart';
import 'package:moon_nest/src/views/settings/goalspage.dart';
import 'package:moon_nest/src/views/settings/myaccountpage.dart';
import 'package:moon_nest/src/views/settings/notificationspage.dart';
import 'package:moon_nest/src/views/settings/subscription.dart';
import 'package:moon_nest/src/views/settings/conditionspage.dart';
import 'package:moon_nest/src/widgets/upgradesheet.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.5.w),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Container(
              height: 97.h,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(51, 65, 85, 1)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Subscription",style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 1)
                        ),),
                        Text("Free",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1)
                        ),),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(context: context, builder: (context) {
                          return const UpgradeSheet();
                        },);
                      },
                      child: Container(
                        width: 131.w,
                        height: 40.h,
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
                          child: Text("UPGRADE",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1)
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyAccountPage();
                },));
              },
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Account ",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    const Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NotificationsPage();
                },));
              },
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Notifications",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    const Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const GoalsPage();
                },));
              },
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Goals and programs",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    const Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SubscriptionPage();
                },));
              },
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subscription management",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    const Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 56.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Support",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(37, 45, 65, 1)
                )),
              ],
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FAQPage();
                },));
              },
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("FAQ",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    const Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){},
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Privacy Policy",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    const Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ConditionsPage();
                },));
              },
              child: SizedBox(
                height: 40.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Terms & Conditions",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    const Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async{
                    showModalBottomSheet(context: context, builder: (context) {
                      return Dialog(
                        insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Column(
                          children: [
                            SizedBox(height: 24.h,),
                            Text("Log out",style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(18, 24, 38, 1)
                            ),),
                            SizedBox(height: 8.h,),
                            Text("Are you sure you want to log out? ",style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(18, 24, 38, 1)
                            ),),
                            SizedBox(height: 24.h,),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap:(){
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 62.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: const Color.fromRGBO(255, 255, 255, 1),
                                          border: Border.all(
                                            color: const Color.fromRGBO(37, 45, 65, 1),
                                            width: 1
                                          )
                                      ),
                                      child: Center(
                                        child: Text("Cancel",style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16.w,),
                                Expanded(
                                  child: GestureDetector(
                                    onTap : ()async{
                                      await AuthService().signOut();
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                        return const SignInPage();
                                      },));
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 62.h,
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
                                        child: Text("Logout",style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(255, 255, 255, 1)
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },);
                  },
                  child: Text("Log out",style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(29, 172, 146, 1),
                      decoration: TextDecoration.underline,
                      decorationColor:  const Color.fromRGBO(29, 172, 146, 1),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
