import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/auth/signup/emailverify.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}
  bool _isClicked = false;
class _VerifyPageState extends State<VerifyPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isClicked = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 24.h,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Verify your account",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        SizedBox(height: 8.h,),
                        Text("Choose a method of verification.",style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(100, 116, 139, 1)
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40.h,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isClicked = true;
                    });
                  },
                  child: Container(
                    height: 72.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: !_isClicked ? const Color.fromRGBO(203, 213, 225, 1):const Color.fromRGBO(29, 172, 146, 1),
                        width: !_isClicked ?1:2
                      )
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child:  Icon(Icons.mail_outline_rounded,color: !_isClicked ? const Color.fromRGBO(100, 116, 139, 1):const Color.fromRGBO(29, 172, 146, 1),),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My email address",style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(100, 116, 139, 1)
                            ),),
                            Text("Verify with your email",style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(100, 116, 139, 1)
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 48.h),
              child: GestureDetector(
                onTap: () {
                  if(_isClicked){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const EmailVerifyPage();
                    },));
                  }
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
            ),
          ],
        ),
      ),
    );
  }
}
