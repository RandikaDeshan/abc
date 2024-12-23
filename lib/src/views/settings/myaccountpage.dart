import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
import 'package:moon_nest/src/services/sharedpreservices.dart';
import 'package:moon_nest/src/themes/themetoggle.dart';
import 'package:provider/provider.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  bool theme = false;
  int height = 0;
  int weight = 0;
  int gender = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _weightController.text = weight.toString();
    _heightController.text = height.toString();
    SharedPreService().getValue().then((value) {
      if(value != null){
        setState(() {
          theme = value;
        });
      }
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text("My Account",style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Form(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Text("Full Name",style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(100, 116, 139, 1)
                          ),),
                          SizedBox(
                            height: 56.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color.fromRGBO(241, 245, 249, 1),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h,),
                          Text("Email",style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(100, 116, 139, 1)
                          ),),
                          SizedBox(
                            height: 56.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color.fromRGBO(241, 245, 249, 1),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h,),
                          Text("Birthday",style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(100, 116, 139, 1)
                          ),),
                          SizedBox(
                            height: 56.h,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color.fromRGBO(241, 245, 249, 1),
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Height (cm)",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(100, 116, 139, 1)
                                  ),),
                                  SizedBox(
                                    width: 150.w,
                                    height: 56.h,
                                    child: TextFormField(
                                      onChanged: (value) {
                                        setState(() {
                                          height = int.parse(value);
                                          _heightController.text = height.toString();
                                        });
                                      },
                                      controller: _heightController,
                                      decoration: InputDecoration(
                                          hintText: _heightController.text,
                                          fillColor: const Color.fromRGBO(241, 245, 249, 1),
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(12),
                                              borderSide: BorderSide.none
                                          ),
                                          suffixIcon: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      height += 1;
                                                      _heightController.text = height.toString();
                                                    });
                                                  },
                                                  child: const Image(image: AssetImage("assets/images/Polygon 1.png"))),
                                              SizedBox(height: 3.h,),
                                              GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      height -= 1;
                                                      _heightController.text = height.toString();
                                                    });
                                                  },
                                                  child: const Image(image: AssetImage("assets/images/Polygon 2.png")))
                                            ],)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Weight (kg)",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(100, 116, 139, 1)
                                  ),),
                                  SizedBox(
                                    width: 150.w,
                                    height: 56.h,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          weight = int.parse(value);
                                          _weightController.text = weight.toString();
                                        });
                                      },
                                        controller: _weightController,
                                        decoration: InputDecoration(
                                            hintText: _weightController.text,
                                            fillColor: const Color.fromRGBO(241, 245, 249, 1),
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(12),
                                                borderSide: BorderSide.none
                                            ),
                                            suffixIcon: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        weight += 1;
                                                        _weightController.text = weight.toString();
                                                      });
                                                    },
                                                    child: const Image(image: AssetImage("assets/images/Polygon 1.png"))),
                                                SizedBox(height: 3.h,),
                                                GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        weight -=1;
                                                        _weightController.text = weight.toString();
                                                      });
                                                    },
                                                    child: const Image(image: AssetImage("assets/images/Polygon 2.png")))
                                              ],)
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h,),
                          Text("Gender",style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(100, 116, 139, 1)
                          ),),
                          SizedBox(height: 8.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      gender = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 56.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(241, 245, 249, 1),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color:gender == 1? const Color.fromRGBO(29, 172, 146, 1): Colors.transparent,
                                            width: 1
                                        )
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(left: 16.w),
                                      child: Row(
                                        children: [
                                          Icon(Icons.male,size: 22,color:gender == 1?const Color.fromRGBO(29, 172, 146, 1):Color.fromRGBO(100, 116, 139, 1)),
                                          Text("Male",style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: gender == 1?const Color.fromRGBO(29, 172, 146, 1):const Color.fromRGBO(100, 116, 139, 1)
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16.w,),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      gender = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 56.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(241, 245, 249, 1),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color:gender == 2?const Color.fromRGBO(29, 172, 146, 1):Colors.transparent,
                                            width: 1
                                        )
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 16.w),
                                      child: Row(
                                        children: [
                                          Icon(Icons.female,size: 22,color:gender == 2?const Color.fromRGBO(29, 172, 146, 1):Color.fromRGBO(100, 116, 139, 1),),
                                          Text("Female",style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color:gender == 2?const Color.fromRGBO(29, 172, 146, 1): const Color.fromRGBO(100, 116, 139, 1)
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 64.h,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("App settings",style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(37, 45, 65, 1)
                          ),),
                          SizedBox(height: 16.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Units",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(18, 24, 38, 1)
                              ),),
                              Container(
                                  width: 203.w,
                                  height: 48.h,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(241, 245, 249, 1),
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: GroupButton(
                                      options: GroupButtonOptions(
                                        selectedColor: const Color.fromRGBO(255, 255, 255, 1),
                                        unselectedColor: Colors.transparent,
                                        selectedTextStyle: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(29, 172, 146, 1)
                                        ),
                                        unselectedTextStyle: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromRGBO(100, 116, 139, 1)
                                        ),
                                      ),
                                      buttons: const [
                                    "Metric", "Imperial"
                                  ])
                              )
                            ],
                          ),
                          SizedBox(height: 16.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Dark Mode",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(18, 24, 38, 1)
                              ),),
                              Transform.scale(
                                scale: 0.6,
                                child: Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: const Color.fromRGBO(29, 172, 146, 1),
                                  inactiveThumbColor: Colors.white,
                                  inactiveTrackColor: const Color.fromRGBO(241, 245, 249, 1),
                                  trackOutlineWidth: const WidgetStatePropertyAll(0),
                                  trackOutlineColor:const WidgetStatePropertyAll(Colors.transparent),
                                  value: theme,
                                  onChanged:(value) async{
                                  setState(() {
                                    theme = value;
                                  });
                                  await SharedPreService().updateSwitch(value: value);
                                  Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
                                },),
                              )
                            ],
                          ),
                          SizedBox(height: 16.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Language",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(18, 24, 38, 1)
                              ),),
                              Row(
                                children: [
                                  Text("English",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(100, 116, 139, 1)
                                  ),),
                                  SizedBox(width: 8.w,),
                                  const Icon(Icons.arrow_forward_ios,size: 20,color: Color.fromRGBO(100, 116, 139, 1) ,)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 16.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Country",style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(18, 24, 38, 1)
                              ),),
                              Row(
                                children: [
                                  Text("USA",style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(100, 116, 139, 1)
                                  ),),
                                  SizedBox(width: 8.w,),
                                  const Icon(Icons.arrow_forward_ios,size: 20,color: Color.fromRGBO(100, 116, 139, 1) ,)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 50.h,),
                          Container(
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
                          SizedBox(height: 36.h,),
                        ],
                      ),

                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
