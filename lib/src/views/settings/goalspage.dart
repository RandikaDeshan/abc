import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/progress/myGoal.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text("Goals and programs",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24.h,),
                Text("My goals",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(37, 45, 65, 1)
                ),),
                SizedBox(height: 12.h,),
                SizedBox(
                  height: 100.h,
                  child: ListView.builder(itemCount: 2,itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image:const  AssetImage("assets/images/Welness.png"),width: 32.w,height: 32.h,),
                            SizedBox(width: 12.w,),
                            Text("Mindfulness",style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(18, 24, 38, 1)
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text.rich(
                                TextSpan(
                                    text: "10",
                                    style:  TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromRGBO(18, 24, 38, 1)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " min / day",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(18, 24, 38, 1)
                                        ),
                                      )
                                    ]
                                )
                            ),
                            SizedBox(width: 12.w,),
                            IconButton(onPressed: (){},
                                style: IconButton.styleFrom(
                                  fixedSize: Size(24.w, 24.h),
                                  backgroundColor: const Color.fromRGBO(241, 245, 249, 1),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                ),
                                icon: Image(image: const AssetImage("assets/images/edit-2-fill.png"),height: 16.h,width: 16.w,))
                          ],
                        )
                      ],
                    );
                  },),
                ),
                SizedBox(height: 56.h,),
                Text("Active program",style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(37, 45, 65, 1)
                ),),
                SizedBox(height: 12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Image(image: AssetImage("assets/images/Rectangle 769.png")),
                        SizedBox(width: 12.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Better Sleep",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(18, 24, 38, 1),
                            ),),
                            Text("Daily content to  support your sleep.",style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(18, 24, 38, 1),
                            ),),
                          ],
                        )
                      ],
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        activeColor: Colors.white,
                        activeTrackColor: const Color.fromRGBO(29, 172, 146, 1),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: const Color.fromRGBO(241, 245, 249, 1),
                        trackOutlineWidth: const WidgetStatePropertyAll(0),
                        trackOutlineColor:const WidgetStatePropertyAll(Colors.transparent),
                        value: switch1,
                        onChanged: (value) {
                          setState(() {
                            switch1 = value;
                          });
                        },),
                    ),
                  ],
                ),
                SizedBox(height: 16.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Image(image: AssetImage("assets/images/Rectangle 76.png")),
                        SizedBox(width: 12.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reduce Stress",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(18, 24, 38, 1),
                            ),),
                            Text("Daily content to cope with  daily challenges.",style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(18, 24, 38, 1),
                            ),),
                          ],
                        )
                      ],
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        activeColor: Colors.white,
                        activeTrackColor: const Color.fromRGBO(29, 172, 146, 1),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: const Color.fromRGBO(241, 245, 249, 1),
                        trackOutlineWidth: const WidgetStatePropertyAll(0),
                        trackOutlineColor:const WidgetStatePropertyAll(Colors.transparent),
                        value: switch2,
                        onChanged: (value) {
                          setState(() {
                            switch2 = value;
                          });
                        },),
                    ),
                  ],
                ),
                SizedBox(height: 16.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Image(image: AssetImage("assets/images/Rectangle 769 (1).png")),
                        SizedBox(width: 12.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Declutter Mind",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(18, 24, 38, 1),
                            ),),
                            Text("Guided and unguided  meditation selection.",style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(18, 24, 38, 1),
                            ),),
                          ],
                        )
                      ],
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        activeColor: Colors.white,
                        activeTrackColor: const Color.fromRGBO(29, 172, 146, 1),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: const Color.fromRGBO(241, 245, 249, 1),
                        trackOutlineWidth: const WidgetStatePropertyAll(0),
                        trackOutlineColor:const WidgetStatePropertyAll(Colors.transparent),
                        value: switch3,
                        onChanged: (value) {
                          setState(() {
                            switch3 = value;
                          });
                        },),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const MyGoalPage();
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
                      child: Text("Save",style: TextStyle(
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
      ),
    );
  }
}
