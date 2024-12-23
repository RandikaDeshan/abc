import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/services/auth/authservices.dart';
import 'package:moon_nest/src/views/auth/signup/signuppage.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';
import 'package:moon_nest/src/views/onBordingPages/question.dart';

import '../../../models/usermodel.dart';
import '../../../services/userservices.dart';


class VerifyCodePage extends StatefulWidget {
  final String name;
  final String email;
  final String password;
  const VerifyCodePage({super.key, required this.name, required this.email, required this.password});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}
bool _isClicked1 = false;
bool _isClicked2 = false;
bool _isClicked3 = false;
bool _isClicked4 = false;
class _VerifyCodePageState extends State<VerifyCodePage> {

  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();
  final TextEditingController _fourthController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isClicked1 = false;
    _isClicked2 = false;
    _isClicked3 = false;
    _isClicked4 = false;
  }

  Future<void> createUser()async{
    try{
      bool? verify = await AuthService().verifyOtp(otp: _firstController.text+_secondController.text+_thirdController.text+_fourthController.text);
      if(verify!){
      await UserService().saveUser(UserModel(
          userId: '',
          name: widget.name,
          email: widget.email,
          password: widget.password));

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const QuestionPage();
      },));}else{
        showDialog(context: context, builder: (context) {
          return  AlertDialog(
            title: const Text("Error"),
            content: Text(_firstController.text.isEmpty ?"Invalid email":"Invalid code"),
            actions: [
              TextButton(onPressed: (){
                _firstController.text.isEmpty ?Navigator.pushReplacement(context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => const SignUpPage(),
                        transitionsBuilder:(context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                        transitionDuration: const Duration(milliseconds: 700),
                        reverseTransitionDuration: const Duration(milliseconds: 700)
                    )) : Navigator.pop(context);
              }, child: const Text("Back"))
            ],
          );
        },);
      }
    }catch(error){
      print("Error : $error");
    }
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
                        Text("Verification Code",style: TextStyle(
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
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 56.h,
                        width: 56.w,
                        child: TextFormField(
                          controller: _firstController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onTap: () {
                            setState(() {
                              _isClicked1 = true;
                            });
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: !_isClicked1?BorderSide.none:const BorderSide(
                                      color: Color.fromRGBO(29, 172, 146, 1),
                                      width: 2
                                  )
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(241, 245, 249, 1),
                              hintText: "0",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(148, 163, 184, 1)
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 56.h,
                        width: 56.w,
                        child: TextFormField(
                          controller: _secondController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onTap: () {
                            setState(() {
                              _isClicked2 = true;
                            });
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: !_isClicked2?BorderSide.none:const BorderSide(
                                      color: Color.fromRGBO(29, 172, 146, 1),
                                      width: 2
                                  )
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(241, 245, 249, 1),
                              hintText: "0",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(148, 163, 184, 1)
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 56.h,
                        width: 56.w,
                        child: TextFormField(
                          controller: _thirdController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            if(value.length == 1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onTap: () {
                            setState(() {
                              _isClicked3 = true;
                            });
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: !_isClicked3?BorderSide.none:const BorderSide(
                                      color: Color.fromRGBO(29, 172, 146, 1),
                                      width: 2
                                  )
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(241, 245, 249, 1),
                              hintText: "0",
                              hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(148, 163, 184, 1)
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 56.h,
                        width: 56.w,
                        child: TextFormField(
                          controller: _fourthController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly],
                          textAlign: TextAlign.center,
                          onTap: () {
                            setState(() {
                              _isClicked4 = true;
                            });
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: !_isClicked4?BorderSide.none:const BorderSide(
                                      color: Color.fromRGBO(29, 172, 146, 1),
                                      width: 2
                                  )
                              ),
                              filled: true,
                              fillColor: const Color.fromRGBO(241, 245, 249, 1),
                              hintText: "0",
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
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 48.h),
              child: GestureDetector(
                onTap: () async{
                  await createUser();
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
