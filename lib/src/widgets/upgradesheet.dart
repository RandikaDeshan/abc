import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../views/monetization/tofferpage.dart';

class UpgradeSheet extends StatefulWidget {
  const UpgradeSheet({super.key});

  @override
  State<UpgradeSheet> createState() => _UpgradeSheetState();
}
int plan = 0;
class _UpgradeSheetState extends State<UpgradeSheet> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding:const EdgeInsets.all(24) ,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Try 7 days for free",style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(18, 24, 38, 1)
              ),),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:const Icon(Icons.close,size: 14,color: Color.fromRGBO(18, 24, 38, 1),))
            ],
          ),
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
          ),
          SizedBox(height: 24.h,),
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
                                      color: plan == 2? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1)
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "/month",
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
          SizedBox(height: 24.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TOfferPage();
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
          )
        ],
      ),
    );
  }
}
