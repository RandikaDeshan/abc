import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/widgets/trendindcard.dart';

import '../../services/sharedpreservices.dart';
import '../navbar/bottomnavpage.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color:const Color.fromRGBO(18, 24, 38, 1)
        ),),
        centerTitle: true,
        leading: IconButton(onPressed: ()async{
          await SharedPreService().updatePage(no: 0);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const BottomNavPage();
          },));
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: ListView.builder(itemCount: 12,itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(left: 16.w),
          child: SizedBox(
              height: 200.h,
              child: const TrendingCard()),
        );
      },),
    );
  }
}
