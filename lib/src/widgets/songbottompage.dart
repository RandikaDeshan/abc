import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/home/songpage.dart';
import 'package:moon_nest/src/widgets/ratepage.dart';

class SongBottomPage extends StatelessWidget {
  const SongBottomPage({super.key});

  @override
  Widget build(BuildContext context) {

    void _showBottomSheet(){
      showDialog(context: context,useSafeArea: false ,builder: (context) {
        return const RatePage();
      },);
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/image7.png"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text("Lion’s breath",style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700
                ),),
                Text("Sleep meditation",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 8.h,),
                Container(
                  height: 22.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromRGBO(255, 255, 255, 0.25),
                      border: Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 0.1),
                          width: 1
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w,),
                    child: Text("27 min listened",style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                SizedBox(height: 48.h,),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 24.w),
                  child: GestureDetector(
                    onTap: () {
                      _showBottomSheet();
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
                ),
                SizedBox(height: 20.h,),
                GestureDetector(
                  onTap: () {
                    _showBottomSheet();
                  },
                  child: Text("End session without saving",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      decoration: TextDecoration.underline,
                      decorationColor: const Color.fromRGBO(255, 255, 255, 1),
                  ),),
                ),
                SizedBox(height: 28.h,)
              ],
            ),
          ],
        ).blurry(
            blur: 5
        ),
      )
    );
  }
}
