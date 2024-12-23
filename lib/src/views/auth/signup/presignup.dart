import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/auth/signin/signinpage.dart';
import 'package:moon_nest/src/views/auth/signup/signuppage.dart';
import 'package:moon_nest/src/views/auth/wrapper/datawrapper.dart';
import 'package:moon_nest/src/views/auth/wrapper/googlewrapper.dart';

import '../../../services/userservices.dart';

class PreSignUpPage extends StatelessWidget {
  const PreSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    Future<void> _signInWithGoogle(BuildContext context) async{
      try{
        await UserService().googleSaveUser();
        if(context.mounted){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return const GoogleWrapper();
          },));
        }
      }catch(error){
        print("Error : $error");
      }
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.5.w),
        child: Column(
          children: [
            SizedBox(height: 55.h,),
            Container(
              height: 458.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(image: AssetImage("assets/images/Image11.png"),fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(203, 213, 225, 1)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: const AssetImage("assets/images/apple11.png"),height: 40.h,width: 40.w,),
                  Text("Continue with Apple",style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: ()async{
                await _signInWithGoogle(context);
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(203, 213, 225, 1)
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: const AssetImage("assets/images/google11.png"),height: 40.h,width: 40.w,),
                    Text("Continue with Google",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return const SignInPage();
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mail_outline_rounded,color: Colors.white,size: 24,),
                    SizedBox(width: 18.39.w,),
                    Text("Create account",style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1)
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? ",style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return const SignUpPage();
                    },));
                  },
                  child: Text("Sign Up",style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(29, 172, 146, 1),
                      decoration: TextDecoration.underline,
                      decorationColor: const Color.fromRGBO(29, 172, 146, 1),
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
