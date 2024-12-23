import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/services/auth/authservices.dart';
import 'package:moon_nest/src/views/auth/signin/forgotpage.dart';
import 'package:moon_nest/src/views/auth/signup/signuppage.dart';
import 'package:moon_nest/src/views/auth/wrapper/datawrapper.dart';
import 'package:moon_nest/src/views/auth/wrapper/googlewrapper.dart';

import '../../../services/userservices.dart';
import '../../navbar/bottomnavpage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}
  bool _isShow = false;
class _SignInPageState extends State<SignInPage> {

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWIthEmailAndPassword() async{
    try{
      await AuthService().signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const DataWrapper();
      },));
    }catch(error){
      print("Error : $error");
    }
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 334.w,
            child: Column(
              children: [
                SizedBox(height: 24.h,),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sign In",style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(18, 24, 38, 1)
                        ),),
                        SizedBox(height: 8.h,),
                        Text("Use the same method that you created your account with.",style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(100, 116, 139, 1)
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24.h,),
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
                SizedBox(height: 8.h,),
                GestureDetector(
                  onTap: () async{
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 48.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.h,
                        width: 92.w,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(241, 245, 249, 1)
                        ),
                      ),
                      Text("Or sign up with email",style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(148, 163, 184, 1)
                      ),),
                      Container(
                        height: 1.h,
                        width: 92.w,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(241, 245, 249, 1)
                        ),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 56.h,
                          child: TextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Please enter your email';
                              }
                              else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                return 'Please enter a valid email address';
                              }
                              else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none
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
                        SizedBox(height: 12.h,),
                        SizedBox(
                          height: 56.h,
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if(value!.isEmpty){
                                return "Please enter your password";
                              }else {
                                return null;
                              }
                            },
                            obscureText: _isShow? false : true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none
                                ),
                                filled: true,
                                fillColor: const Color.fromRGBO(241, 245, 249, 1),
                                suffixIcon: IconButton(onPressed: () {
                                  setState(() {
                                    _isShow = !_isShow;
                                  });
                                }, icon:!_isShow? const Icon(Icons.visibility_off_outlined,color:Color.fromRGBO(100, 116, 139, 1),):const Icon(Icons.visibility_outlined,color:Color.fromRGBO(100, 116, 139, 1),)),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(148, 163, 184, 1)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 12.h,),
                        GestureDetector(
                          onTap: ()async{
                            if(_formkey.currentState!.validate()){
                            await _signInWIthEmailAndPassword();}
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
                              child: Text("Sign In",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(255, 255, 255, 1)
                              ),),
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 12.h,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const ForgotPWPage();
                    },));
                  },
                  child: Text("Forgot password?",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(29, 172, 146, 1)
                  ),),
                ),
                SizedBox(height: 48.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account? ",style: TextStyle(
                        fontSize: 14.sp,
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
                        fontSize: 14.sp,
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
        ),
      ),
    );
  }
}
