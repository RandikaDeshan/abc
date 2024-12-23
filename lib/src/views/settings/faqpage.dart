import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
            Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text("FAQ",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 18.h,),
            Container(
              height: 56.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(241, 245, 249, 1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 16.w,top: 16.h,bottom: 16.h),
                    child: SvgPicture.asset("assets/images/Vector1.svg",height: 20.h,width: 20.w,),
                  ),
                  SizedBox(width: 12.w,),
                  SizedBox(
                    width: 200.w,
                    height: 56.h,
                    child: TextField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none
                          ),
                          hintText: "Search...",
                          hintStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(148, 163, 184, 1)
                          ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24.h,),
            ExpansionTile(
              title: Text("How to cancel my subscription? ",style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(18, 24, 38, 1)
              ),),
              backgroundColor: const Color.fromRGBO(241, 245, 249, 1),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Color.fromRGBO(29, 172, 146, 1),width: 1, )
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
                  child: Text("Non dapibus ex. Mauris vel velit eget odio volutpat ultricies nec vitae enim. Duis tempus orci odio, in feugiat massa tristique ut. Nunc turpis nunc, hendrerit ac sem in, fermentum rhoncus lacus. Morbi consequat nulla ipsum, non lobortis lorem laoreet eget.",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)
                  ),),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            ExpansionTile(
              title: Text("How to get discount code?",style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(18, 24, 38, 1)
              ),),
              backgroundColor: const Color.fromRGBO(241, 245, 249, 1),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color.fromRGBO(29, 172, 146, 1),width: 1, )
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
                  child: Text("Non dapibus ex. Mauris vel velit eget odio volutpat ultricies nec vitae enim. Duis tempus orci odio, in feugiat massa tristique ut. Nunc turpis nunc, hendrerit ac sem in, fermentum rhoncus lacus. Morbi consequat nulla ipsum, non lobortis lorem laoreet eget.",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)
                  ),),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            ExpansionTile(
              title: Text("What are guided meditations",style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(18, 24, 38, 1)
              ),),
              backgroundColor: const Color.fromRGBO(241, 245, 249, 1),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color.fromRGBO(29, 172, 146, 1),width: 1, )
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
                  child: Text("Non dapibus ex. Mauris vel velit eget odio volutpat ultricies nec vitae enim. Duis tempus orci odio, in feugiat massa tristique ut. Nunc turpis nunc, hendrerit ac sem in, fermentum rhoncus lacus. Morbi consequat nulla ipsum, non lobortis lorem laoreet eget.",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)
                  ),),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            ExpansionTile(
              title: Text("How to add personal meditations? ",style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(18, 24, 38, 1)
              ),),
              backgroundColor: const Color.fromRGBO(241, 245, 249, 1),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color.fromRGBO(29, 172, 146, 1),width: 1, )
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
                  child: Text("Non dapibus ex. Mauris vel velit eget odio volutpat ultricies nec vitae enim. Duis tempus orci odio, in feugiat massa tristique ut. Nunc turpis nunc, hendrerit ac sem in, fermentum rhoncus lacus. Morbi consequat nulla ipsum, non lobortis lorem laoreet eget.",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)
                  ),),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            ExpansionTile(
              title: Text("Where can I view my history",style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(18, 24, 38, 1)
              ),),
              backgroundColor: const Color.fromRGBO(241, 245, 249, 1),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color.fromRGBO(29, 172, 146, 1),width: 1, )
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
                  child: Text("Non dapibus ex. Mauris vel velit eget odio volutpat ultricies nec vitae enim. Duis tempus orci odio, in feugiat massa tristique ut. Nunc turpis nunc, hendrerit ac sem in, fermentum rhoncus lacus. Morbi consequat nulla ipsum, non lobortis lorem laoreet eget.",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(100, 116, 139, 1)
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
