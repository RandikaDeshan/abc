import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/services/auth/authservices.dart';
import 'package:moon_nest/src/views/auth/signup/emailcodepage.dart';

class EmailVerifyPage extends StatefulWidget {
  const EmailVerifyPage({super.key});

  @override
  State<EmailVerifyPage> createState() => _EmailVerifyPageState();
}
  bool _isClicked = false;
class _EmailVerifyPageState extends State<EmailVerifyPage> {

  final user = FirebaseAuth.instance.currentUser;

  Future<void> otpSend()async{
    showDialog(context: context,barrierDismissible: false, builder: (context) => const Center(child: CircularProgressIndicator(),),);
    try{
      await AuthService().sendOtp(email: user!.email!);
      // if(context.mounted){
      //   Navigator.push(context, MaterialPageRoute(builder: (context) {
      //     return const VerifyCodePage();
      //   },));
      // }
    }catch(error){
      print("Error : $error");
    }
  }

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
                        Text("Email Address",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        SizedBox(height: 8.h,),
                        Text("We're going to send you an email  with a login link.",style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(100, 116, 139, 1)
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40.h,),
                Text(user!.email!,style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                ),),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 48.h),
              child: GestureDetector(
                onTap: () async{
                  await otpSend();
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
                    child: Text("Verify",style: TextStyle(
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
