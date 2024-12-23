import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}
int plan = 0;
int page = 0;
class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          if(page == 1){
          setState(() {
            page = 0;
          });}
          else if(page == 0){
          Navigator.pop(context);}
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text("Subscription management",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
      ),
      body:page == 0? Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18.h,),
                Container(
                  height: 77.h,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(51, 65, 85, 1),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subscription",style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(248, 250, 252, 1)
                        ),),
                        Text("Free",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(248, 250, 252, 1)
                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36.h,),
                Text("Become Premium",style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    const Image(image: AssetImage("assets/images/check.png")),
                    SizedBox(width: 10.w,),
                    Text("100 + sounds, noises and music",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(100, 116, 139, 1)
                    ),),
                  ],
                ),
                SizedBox(height: 12.h,),
                Row(
                  children: [
                    const Image(image: AssetImage("assets/images/check.png")),
                    SizedBox(width: 10.w,),
                    Text("500+ guided meditations",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(100, 116, 139, 1)
                    ),),
                  ],
                ),
                SizedBox(height: 12.h,),
                Row(
                  children: [
                    const Image(image: AssetImage("assets/images/check.png")),
                    SizedBox(width: 10.w,),
                    Text("Sleep recording",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(100, 116, 139, 1)
                    ),),
                  ],
                ),
                SizedBox(height: 12.h,),
                Row(
                  children: [
                    const Image(image: AssetImage("assets/images/check.png")),
                    SizedBox(width: 10.w,),
                    Text("Sleep tracking tips and insights",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(100, 116, 139, 1)
                    ),),
                  ],
                )
              ],
            ),
            Column(
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
                    setState(() {
                      page =1;
                    });
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
                SizedBox(height: 36.h,)
              ],
            ),
          ],
        ),
      ):
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            SizedBox(height: 18.h,),
            Container(
              height: 77.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(29, 172, 146, 1),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subscription",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(248, 250, 252, 1)
                    ),),
                    Text("Premium",style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(248, 250, 252, 1)
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 44.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Expiration Date",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
                Text("11 Feb 2024",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Manage my subscription",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
                Text("View details",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color.fromRGBO(18, 24, 38, 1),
                ),),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Restore Purchase",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(18, 24, 38, 1),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color.fromRGBO(18, 24, 38, 1),
                ),),
                Text("Restore",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color.fromRGBO(18, 24, 38, 1),
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
