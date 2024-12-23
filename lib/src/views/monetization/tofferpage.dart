import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/monetization/cofferpage.dart';

class TOfferPage extends StatefulWidget {
  const TOfferPage({super.key});

  @override
  State<TOfferPage> createState() => _TOfferPageState();
}
int plan = 0;
class _TOfferPageState extends State<TOfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Image.png"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 54.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.25.w),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.close,size: 28,),color: Colors.white,),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 39.w),
                    child: SizedBox(
                      width: 258.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingBar.builder(
                            itemBuilder: (context, index) => const Icon(Icons.star,color:Color.fromRGBO(119, 205, 190, 1),),
                            onRatingUpdate:(value) {},
                            initialRating: 5,
                            itemPadding: EdgeInsets.only(right: 7.23.w),
                            tapOnlyMode: false,
                            ignoreGestures: true,
                            itemSize: 14,
                            unratedColor: const Color.fromRGBO(148, 163, 184, 1),
                          ),
                          SizedBox(height: 16.h,),
                          Text("When I listen to this apps’ binaural beats, it seems like my anxiety is fading away. It’s temporary but it helps. ",style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1)
                          ),),
                          SizedBox(height: 16.h,),
                          Row(
                            children: [
                              Container(
                                height: 1.h,
                                width: 20.w,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                              SizedBox(width: 8.w,),
                              Text("Bren, 36",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(255, 255, 255, 1)
                              ),),
                            ],
                          ),
                          SizedBox(height: 47.05.h,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 310.h,
                    decoration: const BoxDecoration(
                      color:  Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24)
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          Text("Pick your plan",style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(18, 24, 38, 1)
                          ),),
                          SizedBox(height: 20.h,),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    plan = 1;
                                  });
                                },
                                child: Container(
                                  height: 52.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      border:Border.all(color: plan == 1? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1),
                                          width: plan == 1?4:1)
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              SizedBox(height: 12.h,),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    plan = 2;
                                  });
                                },
                                child: Container(
                                  height: 52.h,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      border:Border.all(color:plan == 2? const Color.fromRGBO(29, 172, 146, 1): const Color.fromRGBO(18, 24, 38, 1),
                                          width: plan == 2?4:1)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("YEARLY",style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(18, 24, 38, 1)
                                            ),),
                                            Text("(\$x.xx / month)",style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(100, 116, 139, 1)
                                            ),),
                                          ],
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            color: const Color.fromRGBO(37, 45, 65, 1)
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
                                            child: Text("-55%",style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(255, 255, 255, 1)
                                            ),),
                                          ),
                                        ),
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
                                                    text: "/year",
                                                    style: TextStyle(
                                                        fontSize: 18.sp,
                                                        fontWeight: FontWeight.w400,
                                                        color: plan == 2? const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(18, 24, 38, 1)
                                                    ),
                                                  )
                                                ]
                                            )
                                        ),
                                      ],
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
                                return const COfferPage();
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
      ),
    );
  }
}
