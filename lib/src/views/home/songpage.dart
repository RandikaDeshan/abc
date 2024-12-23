import 'package:audioplayers/audioplayers.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_nest/src/widgets/songbottomsheeet.dart';
import 'package:moon_nest/src/widgets/songbottompage.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setAudio();
    audioPlayer.onPlayerComplete.listen((event) {
      showDialog(context: context, useSafeArea:false,builder: (context) {
        return const SongBottomPage();
      },);
    },);
    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    },);

    audioPlayer.onDurationChanged.listen((event) {
      duration = event;
    },);

    audioPlayer.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    },);
  }

  Future setAudio()async{
    audioPlayer.setSource(AssetSource("audios/bonnyorbit__forest-river-with-whirls(chosic.com).mp3"));
  }
  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return hours > 0
        ? '${twoDigits(hours)}:${twoDigits(minutes)}:${twoDigits(seconds)}'
        : '${twoDigits(minutes)}:${twoDigits(seconds)}';
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          image:DecorationImage(image: AssetImage("assets/images/image7.png"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 60.h,left: 24.w,right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      style: IconButton.styleFrom(
                          fixedSize: Size(32.w, 32.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.3)
                      ),
                      icon: const Icon(Icons.arrow_back_ios_new,color: Color.fromRGBO(255, 255, 255, 1),)),
                  IconButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (context) {
                      return const SongBottomSheet();
                    },);
                  },
                      style: IconButton.styleFrom(
                        fixedSize: Size(32.w, 32.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.3)
                      ),
                      icon: const Icon(Icons.more_vert,color: Color.fromRGBO(255, 255, 255, 1),)),
                ],
              ),
            ),
            IconButton(
                onPressed: ()async{
                  if(isPlaying){
                    await audioPlayer.pause();
                  }else{
                    await audioPlayer.resume();
                  }
                },
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1000),
                    side: const BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      width: 6
                    )
                  ),
                  fixedSize: Size(95.w, 95.h),
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.2)
                ),
                icon: isPlaying? const Icon(Icons.pause,size: 24,color: Colors.white,):const Icon(Icons.play_arrow,size: 24,color: Colors.white,)),
            Container(
              height: 183.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(32),topLeft: Radius.circular(32)),
                color:Color.fromRGBO(15, 23, 42, 0.3)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Lion’s breath",style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(255, 255, 255, 1)
                  ),),
                  Text("Sleep meditation",style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 1)
                  ),),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 45.w),
                    child: Slider(
                      activeColor: const Color.fromRGBO(29, 172, 146, 1),
                      inactiveColor: const Color.fromRGBO(100, 116, 139, 1),
                      value: position.inSeconds.toDouble(),
                      min: 0,
                      max: duration.inSeconds.toDouble(),
                      onChanged:(value) async{
                        final position = Duration(seconds: value.toInt());
                        await audioPlayer.seek(position);

                        await audioPlayer.resume();
                    },),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 67.5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(formatDuration(position),style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color:const Color.fromRGBO(197, 204, 224, 1)
                        ),),
                        Text(formatDuration(duration),style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color:const Color.fromRGBO(197, 204, 224, 1)
                        ),),
                      ],
                    ),
                  )
                ],
              ),
            ).blurry(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32)),
              blur: 30,
              padding:const EdgeInsets.all(0)
            )
          ],
        ),
      ),
    );
  }
}
