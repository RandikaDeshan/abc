import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/services/auth/authservices.dart';
import 'package:moon_nest/src/views/auth/signin/signinpage.dart';

class ForgotPWPage extends StatefulWidget {
  const ForgotPWPage({super.key});

  @override
  State<ForgotPWPage> createState() => _ForgotPWPageState();
}
bool _isClicked = false;
class _ForgotPWPageState extends State<ForgotPWPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isClicked = false;
  }
  @override
  Widget build(BuildContext context) {

    final TextEditingController _emailController = TextEditingController();

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
                        Text("Forgotten Password",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        SizedBox(height: 8.h,),
                        Text("Please enter an email address that you used to create account with so we can send you an email to reset your password.",style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(100, 116, 139, 1)
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40.h,),
                SizedBox(
                  height: 56.h,
                  child: TextFormField(
                    controller: _emailController,
                    onTap: () {
                      setState(() {
                        _isClicked = true;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: !_isClicked?BorderSide.none:const BorderSide(
                                color: Color.fromRGBO(29, 172, 146, 1),
                                width: 2
                            )
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(241, 245, 249, 1),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(148, 163, 184, 1)
                        )
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 48.h),
              child: GestureDetector(
                onTap: () async{
                  await AuthService().forgotPassword(email: _emailController.text);
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
                  child: Center(
                    child: Text("Send email",style: TextStyle(
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
