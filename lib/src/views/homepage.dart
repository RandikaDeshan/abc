import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moon_nest/src/services/sharedpreservices.dart';
import 'package:moon_nest/src/views/home/categorysongs.dart';
import 'package:moon_nest/src/views/home/homesearch.dart';
import 'package:moon_nest/src/views/home/trendingpage.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';
import 'package:moon_nest/src/widgets/explorecard.dart';
import 'package:moon_nest/src/widgets/raincard.dart';
import 'package:moon_nest/src/widgets/sessioncard.dart';
import 'package:moon_nest/src/widgets/suggetscard.dart';
import 'package:moon_nest/src/widgets/trendindcard.dart';


class HomePage extends StatefulWidget {
  // final bool isSearch = false;
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isSearch = false;
int? pageNo;

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSearch = false;
    SharedPreService().getPage().then((value) {
      if(value != null){
        setState(() {
          pageNo = value;
        });
        print(pageNo);
      }
    },);
  }
  @override
  Widget build(BuildContext context) {

    if(pageNo == 1){
      return const HomeSearchPage();
    }
    else if(pageNo == 2){
      return const TrendingPage();
    }
    else if(pageNo == 3){
      return const CategorySongs();
    }
    else{
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 17.w),
          child: Text("Suggested for you...",style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color:const Color.fromRGBO(18, 24, 38, 1)
          ),),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 22.w),
            child: IconButton(onPressed: () async{
              await SharedPreService().updatePage(no: 1);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const BottomNavPage();
              },));
              print(pageNo);
            }, icon: SvgPicture.asset("assets/images/Vector1.svg",color: const Color.fromRGBO(18, 24, 38, 1),)),
          )
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 340.h,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(itemCount: 12,itemBuilder: (context, index) {
                return const SuggestCard();
              },),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h,left: 24.w,right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color:const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                  GestureDetector(
                    onTap: () async{
                      await SharedPreService().updatePage(no: 2);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const BottomNavPage();
                      },));
                    },
                    child: Text("View all",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color:const Color.fromRGBO(29, 172, 146, 1)
                    ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w),
              child: SizedBox(
                height: 237.h,
                child: ListView.builder(itemCount: 12,scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
                  return const TrendingCard();
                },),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h,left: 24.w,right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rain and Storm Sounds",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color:const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                  GestureDetector(
                    onTap: () async{
                      await SharedPreService().updatePage(no: 3);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const BottomNavPage();
                      },));
                    },
                    child: Text("24 sessions",style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color:const Color.fromRGBO(29, 172, 146, 1)
                    ),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w),
              child: SizedBox(
                height: 170.h,
                child: ListView.builder(itemCount: 12,scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
                  return const RainCard();
                },),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h,left: 24.w,right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Explore Meditation Types  ",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color:const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w),
              child: SizedBox(
                height: 101.h,
                child: ListView.builder(itemCount: 12,scrollDirection: Axis.horizontal, itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: SizedBox(
                        width: 141.w,
                        child: const ExploreCard()),
                  );
                },),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h,left: 24.w,right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Breathing Sessions",style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color:const Color.fromRGBO(18, 24, 38, 1)
                  ),),
                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(itemCount: 3,itemBuilder: (context, index) {
                  return const SessionCard();
                },),
              ),
            ),
          ],
        ),
      )
    );}
  }
}
