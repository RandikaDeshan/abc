import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SongGrideView extends StatefulWidget {
  SongGrideView({super.key});

  @override
  State<SongGrideView> createState() => _SongGrideViewState();
}

class _SongGrideViewState extends State<SongGrideView> {
  final List<String> grideViewImage = [
    'assets/images/questionPageGrideViewImage/image.png',
    'assets/images/questionPageGrideViewImage/image (13).png',
    'assets/images/questionPageGrideViewImage/image (2).png',
    'assets/images/questionPageGrideViewImage/image (15).png',
    'assets/images/questionPageGrideViewImage/image (6).png',
    'assets/images/questionPageGrideViewImage/image (7).png',
    'assets/images/questionPageGrideViewImage/image (11).png',
    'assets/images/questionPageGrideViewImage/image (12).png'
  ];

  final List<String> titles = [
    'Ocean Sounds',
    'Birds Singing',
    'Binural Beats',
    'Gong Sounds',
    'Sounds of Rain',
    'White Noise',
    'Lo Fi Beats',
    'Fire Cracking'
  ];

  List<bool> chooseSound = List.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 160 / 101,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: grideViewImage.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                chooseSound[index] = !chooseSound[index];
              });
            },
            child: Container(
              width: 160.w,
              height: 101.h,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(grideViewImage[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13.62),
                        child: Text(
                          titles[index],
                          style: TextStyle(
                            color: chooseSound[index]
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            fontSize: 14.sp,
                            height: 1.4,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
