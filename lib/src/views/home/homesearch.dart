import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moon_nest/src/views/navbar/bottomnavpage.dart';
import 'package:moon_nest/src/widgets/filterpage.dart';
import 'package:moon_nest/src/widgets/singlesong.dart';

import '../../services/sharedpreservices.dart';

class HomeSearchPage extends StatefulWidget {
  const HomeSearchPage({super.key});

  @override
  State<HomeSearchPage> createState() => _HomeSearchPageState();
}
int? pageNo;
class _HomeSearchPageState extends State<HomeSearchPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 45.h,left: 20.w,right: 20.w),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: ()async{
                  await SharedPreService().updatePage(no: 0);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BottomNavPage();
                  },));
                }, icon: const Icon(Icons.arrow_back_ios_new,size: 24,)),
                SizedBox(width: 8.w,),
                Container(
                  height: 56.h,
                  width: MediaQuery.of(context).size.width/3 * 2.2,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(241, 245, 249, 1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color.fromRGBO(29, 172, 146, 1),
                      width: 1
                    )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 16.w,),
                      SvgPicture.asset("assets/images/Vector1.svg",color: const Color.fromRGBO(18, 24, 38, 1),),
                      SizedBox(
                        height: 56.h,
                        width: 180.w,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            )
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            showModalBottomSheet(context: context, builder: (context) {
                              return const FilterPage();
                            },);
                          },
                          child: SvgPicture.asset("assets/images/Filter.svg",height: 20.h,width: 20.w,)),
                      SizedBox(width: 18.w,),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(itemCount: 12,itemBuilder: (context, index) {
                return const SingleSongCard();
              },),
            )
          ],
        ),
      ),
    );
  }
}
