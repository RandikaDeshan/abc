import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/views/auth/signup/presignup.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<TermsPage> createState() => _TermsPageState();
}
 bool? terms1 = false;
 bool? terms2 = false;
 bool? terms3 = false;
class _TermsPageState extends State<TermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 24.w,vertical: 16.h),
        child: Column(
          children: [
            SizedBox(
              width: 375.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Let’s get you started!",style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                  SizedBox(height: 68.h,),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(value: terms1, onChanged: (value) {
                            setState(() {
                              terms1 = value;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          ),
                            checkColor: Colors.white,
                            activeColor: const Color.fromRGBO(29, 172, 146, 1),
                            side: const BorderSide(
                              color: Color.fromRGBO(148, 163, 184, 1),
                              width: 1
                            ),
                          ),
                          SizedBox(width: 18.w,),
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                text: "I agree to ",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(148, 163, 184, 1)
                                ),
                                children: [
                                  TextSpan(
                                    text: "Privacy Policy",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(29, 172, 146, 1),
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color.fromRGBO(29, 172, 146, 1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " and ",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(148, 163, 184, 1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Terms of Use.",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(29, 172, 146, 1),
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color.fromRGBO(29, 172, 146, 1),
                                    ),
                                  ),
                                ]
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 27.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(value: terms2, onChanged: (value) {
                            setState(() {
                              terms2 = value;
                            });
                          },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            ),
                            checkColor: Colors.white,
                            activeColor: const Color.fromRGBO(29, 172, 146, 1),
                            side: const BorderSide(
                                color: Color.fromRGBO(148, 163, 184, 1),
                                width: 1
                            ),
                          ),
                          SizedBox(width: 18.w,),
                          Expanded(
                            child: Text.rich(
                                TextSpan(
                                    text: "I agree to processing of my personal  data for providing me  app functions. See more in  ",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(148, 163, 184, 1)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Privacy Policy.",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(29, 172, 146, 1),
                                          decoration: TextDecoration.underline,
                                          decorationColor: const Color.fromRGBO(29, 172, 146, 1),
                                        ),
                                      ),
                                    ]
                                )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 27.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(value: terms3, onChanged: (value) {
                            setState(() {
                              terms3 = value;
                            });
                          },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            ),
                            checkColor: Colors.white,
                            activeColor: const Color.fromRGBO(29, 172, 146, 1),
                            side: const BorderSide(
                                color: Color.fromRGBO(148, 163, 184, 1),
                                width: 1
                            ),
                          ),
                          SizedBox(width: 18.w,),
                          Expanded(
                            child: Text( "I agree that  may use my personal data to send me product or service offerings via app or email.*",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(148, 163, 184, 1)
                                    ),)
                            ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 72.h,),
            GestureDetector(
              onTap: () {
                setState(() {
                  terms1 = true;
                  terms2 = true;
                  terms3 = true;
                });
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
                  child: Text("Accept all",style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(255, 255, 255, 1)
                  ),),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: () {
                if(terms1! && terms2! && terms3!){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PreSignUpPage();
                  },));
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color.fromRGBO(37, 45, 65, 1),
                      width: 1
                    )
                ),
                child: Center(
                  child: Text("Next",style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.h,),
              child: Text.rich(textAlign: TextAlign.center,
                  TextSpan(
                      text: "*You can withdraw your consent anytime by contacting us at ",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(148, 163, 184, 1)
                      ),
                      children: [
                        TextSpan(
                          text: "support@support.com",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(29, 172, 146, 1),
                          ),
                        ),
                      ]
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
