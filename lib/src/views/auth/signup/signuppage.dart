import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/models/usermodel.dart';
import 'package:moon_nest/src/services/auth/authservices.dart';
import 'package:moon_nest/src/services/userservices.dart';
import 'package:moon_nest/src/views/auth/signin/signinpage.dart';
import 'package:moon_nest/src/views/auth/signup/emailcodepage.dart';
import 'package:moon_nest/src/views/auth/signup/verifypage.dart';
import 'package:moon_nest/src/views/auth/wrapper/datawrapper.dart';
import 'package:moon_nest/src/views/auth/wrapper/googlewrapper.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';
import 'package:moon_nest/src/views/onBordingPages/question.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
  bool _isShow = false;
class _SignUpPageState extends State<SignUpPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  Future<void> registerUser(BuildContext context) async{
    try{

      await AuthService().sendOtp(email: _emailController.text);

      if(context.mounted){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return VerifyCodePage(name: _nameController.text, email: _emailController.text, password: _passwordController.text,);
        },));
      }
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
        title: Text("Sign Up",style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 334.w,
            child: Column(
              children: [
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
                  onTap:() async{
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
                        controller: _nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the name';
                          } else {
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
                          hintText: "Name",
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
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an email';
                          }
                          else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          else {
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
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          }else if(value.length < 6){
                            return 'Password must have minimum 6 characters';
                          }
                          else {
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
                      onTap: () async{
                        if(_formkey.currentState!.validate()){
                          await registerUser(context);
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
                          child: Text("Create account",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1)
                          ),),
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 48.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(18, 24, 38, 1)
                    ),),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return const SignInPage();
                        },));
                      },
                      child: Text("Sign In",style: TextStyle(
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