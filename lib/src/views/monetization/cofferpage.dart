import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/monetization/sofferpage.dart';

class COfferPage extends StatefulWidget {
  const COfferPage({super.key});

  @override
  State<COfferPage> createState() => _COfferPageState();
}
int plan = 0;
class _COfferPageState extends State<COfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/image 1368.png"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.25.w,top: 54.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.close,size: 28,),color: Colors.white,),
                    ],
                  ),
                ),
                SizedBox(height: 18.h,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromRGBO(255, 255, 255, 0.6),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(15, 23, 42, 0.04),
                          blurRadius: 20,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 6.h),
                    child: Text("Become Meditation Pro",style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("200",style: TextStyle(
                    fontSize: 90.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromRGBO(255, 255, 255, 1)
                ),),
                Text("sessions",style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  letterSpacing: 6,
                ),),
                SizedBox(height: 50.h,),
                Container(
                  height: 264.h,
                  decoration:const BoxDecoration(
                      color:  Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24)
                      )
                  ) ,
                  child: Padding(
                    padding: EdgeInsets.only(left: 19.5.w,right: 19.5.w,top: 24.h),
                    child: Column(
                      children: [
                        Text("Pick your plan",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        SizedBox(height: 20.h,),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    plan = 1;
                                  });
                                },
                                child: Container(
                                  height: 87.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      border:Border.all(color: plan == 1? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1),
                                          width: plan == 1?4:1)
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("MONTHLY",style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text.rich(
                                            TextSpan(
                                                text: "\$x.xx ",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: plan == 1? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1)
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: "/month",
                                                    style: TextStyle(
                                                        fontSize: 18.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: plan == 1? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1)
                                                    ),
                                                  )
                                                ]
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w,),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    plan = 2;
                                  });
                                },
                                child: Container(
                                  height: 87.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      border:Border.all(color:plan == 2? const Color.fromRGBO(29, 172, 146, 1): const Color.fromRGBO(18, 24, 38, 1),
                                          width: plan == 2?4:1)
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("YEARLY",style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(18, 24, 38, 1)
                                        ),),
                                        Text.rich(
                                            TextSpan(
                                                text: "\$x.xx ",
                                                style: TextStyle(
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: plan == 2? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1)
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: "/ year",
                                                    style: TextStyle(
                                                        fontSize: 18.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: plan == 2? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1)
                                                    ),
                                                  )
                                                ]
                                            )
                                        ),
                                        Text("(\$x.xx / month)",style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(100, 116, 139, 1)
                                        ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const SOfferPage();
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
                              child: Text("Continue",style: TextStyle(
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
