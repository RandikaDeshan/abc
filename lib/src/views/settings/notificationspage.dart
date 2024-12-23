import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
import 'package:numberpicker/numberpicker.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool mediation = false;
  bool content = false;
  bool promo = false;
  int hours = 1;
  int minutes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text("Notifications",style: TextStyle(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Meditation reminders",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        Text("Daily scheduled reminder",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeColor: Colors.white,
                            activeTrackColor: const Color.fromRGBO(29, 172, 146, 1),
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: const Color.fromRGBO(241, 245, 249, 1),
                            trackOutlineWidth: const WidgetStatePropertyAll(0),
                            trackOutlineColor:const WidgetStatePropertyAll(Colors.transparent),
                            value: mediation,
                            onChanged: (value) {
                              setState(() {
                                mediation = value;
                              });
                            },),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 32.h,),
                Center(
                  child: SizedBox(
                    height: 165.h,
                    width: 220.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        NumberPicker(
                          infiniteLoop: true,
                          zeroPad: true,
                          itemWidth: 70.w,
                          itemHeight: 56.h,
                          minValue: 1,
                          maxValue: 12,
                          textStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(148, 163, 184, 1)
                          ),
                          selectedTextStyle: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(18, 24, 38, 1)
                          ),
                          value: hours,
                          onChanged:(value) {
                            setState(() {
                              hours = value;
                            });
                          },
                          decoration: const BoxDecoration(
                              border:Border(top: BorderSide(
                                  color:Color.fromRGBO(29, 172, 146, 1),
                                  width: 2
                              ),
                                  bottom: BorderSide(
                                      color:Color.fromRGBO(29, 172, 146, 1),
                                      width: 2
                                  ),
                                  left: BorderSide(
                                      color:Color.fromRGBO(29, 172, 146, 1),
                                      width: 2
                                  )
                              )
                          ),
                        ),
                        NumberPicker(
                          infiniteLoop: true,
                          zeroPad: true,
                          itemWidth: 70.w,
                          itemHeight: 56.h,
                          minValue: 0,
                          maxValue: 59,
                          textStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(148, 163, 184, 1)
                          ),
                          selectedTextStyle: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(18, 24, 38, 1)
                          ),
                          value: minutes,
                          onChanged:(value) {
                            setState(() {
                              minutes = value;
                            });
                          },
                          decoration: const BoxDecoration(
                              border:Border(top: BorderSide(
                                  color:Color.fromRGBO(29, 172, 146, 1),
                                  width: 2
                              ),
                                bottom: BorderSide(
                                    color:Color.fromRGBO(29, 172, 146, 1),
                                    width: 2
                                ),
                                right: BorderSide(
                                    color:Color.fromRGBO(29, 172, 146, 1),
                                    width: 2
                                ),
                              )
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          height: 100.h,
                          width: 70.w,
                          decoration:  BoxDecoration(
                            color: const Color.fromRGBO(241, 245, 249, 1),
                            borderRadius:BorderRadius.circular(8),
                          ),
                          child: GroupButton(
                              options: GroupButtonOptions(
                                  groupingType: GroupingType.column,
                                  spacing: 0,
                                  borderRadius: BorderRadius.circular(8),
                                  selectedTextStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(18, 24, 38, 1)
                                  ),
                                  unselectedTextStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(148, 163, 184, 1)
                                  ),
                                  unselectedColor: Colors.transparent,
                                  selectedColor: Colors.white
                              ),
                              buttons: const [
                                "AM","PM"
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 52.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Content notification",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        Text("Get daily mindful content. ",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeColor: Colors.white,
                            activeTrackColor: const Color.fromRGBO(29, 172, 146, 1),
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: const Color.fromRGBO(241, 245, 249, 1),
                            trackOutlineWidth: const WidgetStatePropertyAll(0),
                            trackOutlineColor:const WidgetStatePropertyAll(Colors.transparent),
                            value: content,
                            onChanged: (value) {
                              setState(() {
                                content = value;
                              });
                            },),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 32.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Promo offers",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        Text("Notify me about special prices.",style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeColor: Colors.white,
                            activeTrackColor: const Color.fromRGBO(29, 172, 146, 1),
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: const Color.fromRGBO(241, 245, 249, 1),
                            trackOutlineWidth: const WidgetStatePropertyAll(0),
                            trackOutlineColor:const WidgetStatePropertyAll(Colors.transparent),
                            value: promo,
                            onChanged: (value) {
                              setState(() {
                                promo = value;
                              });
                            },),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
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
                SizedBox(height: 36.h,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
